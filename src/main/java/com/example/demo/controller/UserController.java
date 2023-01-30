package com.example.demo.controller;

import com.example.demo.Services.UserService;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

@Controller
public class UserController {
    @Autowired private UserService userService;
    
    @PostMapping(value = "/saveUser")
    public String saveUser(User user, @RequestParam(name = "file", required = false) MultipartFile fileAvatar){
        userService.saveUser(user, fileAvatar);
        return "redirect:/";
    }
}
