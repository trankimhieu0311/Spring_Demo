package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class Chitietphanquyen {
    @GetMapping(value = "chitietphanquyen")
    public String chitietphanquyen(Model model){
        return "Phanquyen/Chitietphanquyen";
    }
}
