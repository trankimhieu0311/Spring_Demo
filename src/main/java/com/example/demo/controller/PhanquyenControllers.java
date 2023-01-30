package com.example.demo.controller;

import com.example.demo.Services.User_RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class PhanquyenControllers {
    @Autowired private User_RoleService user_roleService;
    @GetMapping(value = "phanquyen")
    public String phanquyen(Model model){
        model.addAttribute("user", user_roleService.getAll());
        return "Thongke/Phanquyen";

    }
}
