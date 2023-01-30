package com.example.demo.config;

import com.example.demo.entity.MyUser;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.context.SecurityContextHolder;

import java.util.ArrayList;
import java.util.List;

public class SecurityUtils {
    public static MyUser getPrincipal() {
        MyUser myUser = (MyUser) SecurityContextHolder.getContext().getAuthentication().getPrincipal();
        return myUser;
    }

    public static String getNameUserCurrent() {
        String userCurrent = SecurityContextHolder.getContext().getAuthentication().getName();
        return userCurrent;
    }

    @SuppressWarnings("unchecked")
    public static List<String> getAuthorities() {
        List<String> results = new ArrayList<>();
        List<GrantedAuthority> authorities = (List<GrantedAuthority>) (SecurityContextHolder.getContext()
                .getAuthentication().getAuthorities());
        for (GrantedAuthority authority : authorities) {
            results.add(authority.getAuthority());
        }
        return results;
    }
}
