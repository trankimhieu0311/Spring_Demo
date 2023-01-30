package com.example.demo.controller;

import com.example.demo.Repositories.GiohangKHRepository;
import com.example.demo.Repositories.GiohangRepository;
import com.example.demo.Services.DonhangService;
import com.example.demo.entity.GiohangKH;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class DonhangController {
    @Autowired
    private GiohangRepository giohangRepository;
    @Autowired
    private GiohangKHRepository giohangKHRepository;
    @GetMapping(value = "/donhang")
    public String donhang(Model model){
        model.addAttribute("bills", giohangRepository.getAllBill());
        return "Thongke/Donhang";
    }

    @Cacheable
    @PostMapping(value = "/donhang")
    public String donhang(Model model, @RequestParam(name = "keyword") String name){
        model.addAttribute("bills", giohangRepository.searchBill(name));
        return "Thongke/Donhang";
    }

    @GetMapping(value = "/removetorder/{Id}")
    public String removeproductInOrder(@PathVariable int Id){
        giohangRepository.deleteByIdGioHangKH(Id);
        giohangKHRepository.deleteById(Id);
        return "redirect:/donhang";
    }
}
