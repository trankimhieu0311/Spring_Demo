package com.example.demo.controller;

import com.example.demo.Repositories.User_RoleRepository;
import com.example.demo.Services.User_RoleService;
import com.example.demo.entity.User_Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class ChitietphanquyenController {

    @Autowired
            private  User_RoleService user_roleService;
    @GetMapping (value = "/chitietphanquyen/{id}")
    public String chitietphanquyen(Model model, @PathVariable int id){
        model.addAttribute("user",user_roleService.getUserById(id));
        return "Phanquyen/Chitietphanquyen";
    }

    @PostMapping (value = "updateLevels")
    public String updateLevels(User_Role user_role){
        user_roleService.SaveUser(user_role);
        return"redirect:/phanquyen";
    }
}
