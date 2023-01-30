package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HoanthanhdonController {
    @GetMapping(value = "/Hoanthanhdon")
    public String Hoanthanhdon(Model model){
        return "Donhang/Hoanthanhdon";
    }

}
