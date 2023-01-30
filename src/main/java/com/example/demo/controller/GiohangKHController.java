package com.example.demo.controller;

import com.example.demo.Services.GiohangKHService;
import com.example.demo.entity.GiohangKH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class GiohangKHController {
    @Autowired private GiohangKHService giohangKHService;

    @PostMapping(value = "/buyProduct")
    public String buyProduct(GiohangKH giohangKH){
        giohangKHService.buyProduct(giohangKH);
        return "redirect:/";
    }

}
