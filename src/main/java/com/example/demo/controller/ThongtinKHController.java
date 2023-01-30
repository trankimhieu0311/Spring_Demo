package com.example.demo.controller;

import com.example.demo.Repositories.UserRepository;
import com.example.demo.config.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ThongtinKHController {
    @Autowired private UserRepository userRepository;

    @GetMapping(value = "/ThongtinKH")
    public String ThongtinKH(Model model){
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findUserByEmail(SecurityUtils.getPrincipal().getEmail()));
        }
        return "Giohang/ThongtinKH";
    }

}
