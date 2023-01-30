package com.example.demo.controller;

import com.example.demo.Services.AdminService;
import com.example.demo.config.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class LoginController {
    @Autowired private AdminService adminService;

    @Autowired
    private BCryptPasswordEncoder encoder;

    @RequestMapping(value = "/login")
    public String loginPage(){
        return "Login/index";
    }

    @GetMapping(value = "/loginFailed")
    public String loginFailed(){
        return "PageException/exception";
    }

    @RequestMapping(value = "/logout")
    public String logoutPage(){
        return "IndexPage/index";
    }

}
