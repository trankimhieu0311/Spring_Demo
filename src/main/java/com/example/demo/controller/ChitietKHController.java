package com.example.demo.controller;

import com.example.demo.Repositories.GiohangKHRepository;
import com.example.demo.Repositories.GiohangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import javax.persistence.Id;

@Controller
public class ChitietKHController {
    @Autowired private GiohangRepository giohangRepository;
    @Autowired private GiohangKHRepository giohangKHRepository;

    @GetMapping(value = "/ChitietKH/{id}")
    public String ChitietKH(Model model, @PathVariable int id){
        model.addAttribute("ChitietKH", giohangRepository.findAllBillByIdGioHang(id));
        model.addAttribute("status", giohangRepository.findgiohangKHById(id));
        return "Donhang/Chitietkhachhang";
    }

    @PostMapping(value = "/updateOrder")
    public String updateBill( @Param("id") int id,@Param("status") int status){
        giohangKHRepository.UpdateGioHangKH(id, status);
        return "redirect:/";
    }
}
