package com.example.demo.controller;

import com.example.demo.Services.LoaiSpService;
import com.example.demo.entity.Loaisp;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "admin")
public class LoaisanphamController {
    @Autowired
    private LoaiSpService loaiSpService;

    @GetMapping(value = "/loaisp/{page}")
    public String listSanPham(Model model, @PathVariable int page){
        Pageable pageable = PageRequest.of(page - 1, 15);
        Page<Loaisp> loaisps = loaiSpService.findLoaiSanPhambyPhanTrang(pageable);
        model.addAttribute("listSanPham",loaisps.getContent());
        model.addAttribute("totalpage", loaisps.getTotalPages());
        model.addAttribute("currentPage", page);
        return "Thongke/Danhmuc";
    }

    @GetMapping(value = "/createloaisp")
    public String createLoaiSanPham(Model model){
        model.addAttribute("loaisanpham",new Loaisp());
        return "Loaisanpham/createloaisp";
    }

    @PostMapping(value = "/saveloaisp")
    public String saveLoaiSanPham(Loaisp loaisp){
        try{
        loaiSpService.saveLoaiSanPham(loaisp);
        }catch (DataIntegrityViolationException e){
            return "PageException/exception";
        }
        return "redirect:/admin/loaisp/1";
    }

    @GetMapping(value = "/deleteloaisp/{idloaisanpham}")
    public String deleteLoaiSanPham(@PathVariable("idloaisanpham") Integer id){
        try {
        loaiSpService.deleteLoaiSanPham(id);
        }catch (DataIntegrityViolationException e){
            return "PageException/XoaLoai";
        }
        return "redirect:/admin/loaisp/1";
    }

    @GetMapping(value = "/editloaisp/{idloaisanpham}")
    public String editLoaiSanPham(@PathVariable("idloaisanpham") Integer id, Model model){
        model.addAttribute("listLoaiSanPham", loaiSpService.getLoaiSanPhambyId(id));
        return "Loaisanpham/editloaisp";
    }
}
