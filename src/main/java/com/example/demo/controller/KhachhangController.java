package com.example.demo.controller;

import com.example.demo.Repositories.GiohangKHRepository;
import com.example.demo.Repositories.UserRepository;
import com.example.demo.config.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

@Controller
public class KhachhangController {
    @Autowired private GiohangKHRepository giohangKHRepository;
    @Autowired private UserRepository userRepository;
    @GetMapping(value = "/Khachhang/{id}")
    public String khachhang(Model model, @PathVariable int id){
        model.addAttribute("bills", giohangKHRepository.getGiohangKHByIdUser(id));
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findAllByUserIdIs(id));
        }
        return "Donhang/Khachhang";
    }
}
