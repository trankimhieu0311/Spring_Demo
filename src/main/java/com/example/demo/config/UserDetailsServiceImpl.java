package com.example.demo.config;

import com.example.demo.Repositories.RoleRepository;
import com.example.demo.Repositories.UserRepository;
import com.example.demo.entity.MyUser;
import com.example.demo.entity.Role;
import com.example.demo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

@Service
public class UserDetailsServiceImpl implements UserDetailsService {

    @Autowired
    private UserRepository userRepository;
    @Autowired
    private RoleRepository roleRepository;

    @Override
    public UserDetails loadUserByUsername(String email) throws UsernameNotFoundException {
        User user = userRepository.findUserByEmail(email);
        if (user == null) {
            throw new UsernameNotFoundException(email);
        }else {
                List<Role> roleNames = roleRepository.findUser_RoleByUserName(email);
                List<GrantedAuthority> grantList = new ArrayList<>();
                if (!CollectionUtils.isEmpty(roleNames)) {
                    for (Role role : roleNames) {
                        GrantedAuthority authority = new SimpleGrantedAuthority(role.getRoleName());
                        grantList.add(authority);
                    }
                }
            MyUser userDetail = new MyUser(user.getUserName(), user.getEmail(),user.getPassword(), grantList);
                user.setUserName(user.getUserName());
            return userDetail;
        }
    }
}
