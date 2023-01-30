package com.example.demo.config;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

/**
 *
 * @author ldanh
 */
@Configuration
@EnableWebSecurity
@ComponentScan({"com.example.demo"})
@EnableGlobalMethodSecurity(prePostEnabled=true)
//@EnableOAuth2Sso
public class SecurityConfig extends WebSecurityConfigurerAdapter {

    @Autowired
    private UserDetailsServiceImpl userDetailsService;

    @Bean
    public BCryptPasswordEncoder passwordEncoder() {
        BCryptPasswordEncoder bCryptPasswordEncoder = new BCryptPasswordEncoder();
        return bCryptPasswordEncoder;
    }

    @Autowired
    public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {
        auth.userDetailsService(userDetailsService).passwordEncoder(new BCryptPasswordEncoder());
    }

    @Override
    protected void configure(HttpSecurity http) throws Exception {
        http.csrf().disable();
        // Các trang không yêu cầu login
        http.authorizeRequests().antMatchers("/*").permitAll();
        // Các trang cân login
        // trang vào user
//        http.authorizeRequests().antMatchers("/user").access("hasAnyRole('ROLE_USER')");
                // trang vào admin
        http.authorizeRequests().antMatchers("/admin", "/admin/**").access("hasAnyRole('ROLE_ADMIN')");
        // Khi người dùng đã login, với vai trò XX.
        // Nhưng truy cập vào trang yêu cầu vai trò YY,
        // Ngoại lệ AccessDeniedException sẽ ném ra.
        http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/loginFailed");

        // Cấu hình cho Login Form.
        http.authorizeRequests().and().formLogin()
                .loginProcessingUrl("/j_spring_security_check")
                .loginPage("/")
                .successHandler(new RefererRedirectionAuthenticationSuccessHandler())
                .failureUrl("/loginFailed")
                .usernameParameter("username")
                .passwordParameter("password")
                .and().logout().logoutUrl("/logout")
                .logoutSuccessUrl("/").deleteCookies("JSESSIONID");

    }
}
