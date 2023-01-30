package com.example.demo.controller;

import com.example.demo.Services.GiohangService;
import com.example.demo.config.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class GiohangController {
    @Autowired private GiohangService giohangService;

    @GetMapping(value = "/giohang")
    public String Giohang(Model model){
        model.addAttribute("sanpham", giohangService.getListProduct());
        model.addAttribute("tongtien",giohangService.getTongTien());
        model.addAttribute("userCurrent", SecurityUtils.getNameUserCurrent());
        return "Giohang/giohang";
    }

    @GetMapping(value = "/addtocart")
    public String addProductToCart(@RequestParam int id, @RequestParam int soluong){
        giohangService.addToCart(id, soluong);
        return "redirect:/giohang";
    }

    @GetMapping(value = "/removetocart/{id}")
    public String removeProductInCart(@PathVariable int id){
        giohangService.removeToCart(id);
        return "redirect:/giohang";
    }
    @GetMapping(value = "/addition/{id}")
    public String addition(@PathVariable int id){
        giohangService.additionProduct(id);
        return "redirect:/giohang";
    }
    @GetMapping(value = "/subtraction/{id}")
    public String subtraction(@PathVariable int id){
        giohangService.substractionProduct(id);
        return "redirect:/giohang";
    }

}
