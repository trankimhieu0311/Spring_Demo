package com.example.demo.controller;

;
import com.example.demo.Repositories.GiohangKHRepository;
import com.example.demo.Repositories.GiohangRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;


@Controller
public class ChitietdonhangController {

    @Autowired private GiohangRepository giohangRepository;
    @Autowired private GiohangKHRepository giohangKHRepository;

    @GetMapping(value = "/Chitietdonhang/{id}")
    public String Chitietdonhang(Model model, @PathVariable int id){
        model.addAttribute("donhang", giohangRepository.findAllBillByIdGioHang(id));
        model.addAttribute("status", giohangRepository.findgiohangKHById(id));
        return "Donhang/Chitietdonhang";
    }

    @PostMapping(value = "/updateBill")
    public String updateBill(@Param("id") int id,@Param("status") int status){
        giohangKHRepository.UpdateGioHangKH(id, status);
        return "redirect:/donhang";
    }
}
