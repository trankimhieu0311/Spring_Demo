package com.example.demo.controller;

import com.example.demo.Services.HieusanphamService;
import com.example.demo.entity.Hieusanpham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataIntegrityViolationException;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

@RequestMapping(value = "admin")
@Controller
public class HieusanphamController {
    @Autowired
    private HieusanphamService hieusanphamService;

    @GetMapping(value = "/hieusp/{page}")
    public String getHieuSanPham(Model model,@PathVariable(name = "page")int page){
        Pageable pageable = PageRequest.of(page - 1, 15);
        Page<Hieusanpham> hieusanphams = hieusanphamService.findHieuSanPhambyPhanTrang(pageable);
        model.addAttribute("listHieuSanPham", hieusanphams.getContent());
        model.addAttribute("totalpage", hieusanphams.getTotalPages());
        model.addAttribute("currentPage", page);
//        return "/Hieusanpham/index";
        return "/Thongke/Thuonghieu";
    }

    @GetMapping(value = "/createhieusp")
    public String createHieuSanPham(Model model){
        model.addAttribute("hieusanpham", new Hieusanpham());
        return "/Hieusanpham/addhieusp";
    }

    @PostMapping(value = "/savehieusp")
    public String saveHieuSanPham(Hieusanpham hieusanpham,@RequestParam(name = "fileImageBrand", required = false)MultipartFile multipartFile){
        try {
        hieusanphamService.saveHieuSanPham(hieusanpham, multipartFile);
        }catch (DataIntegrityViolationException e){
            return "PageException/exception";
        }
        return "redirect:/admin/hieusp/1";
    }

    @GetMapping(value = "/deletehieusp/{idhieusanpham}")
    public String deleteHieuSanPham(@PathVariable("idhieusanpham") Integer idHieuSanPham){
        try {
        hieusanphamService.deleteHieuSanPham(idHieuSanPham);
        }catch (DataIntegrityViolationException e){
            return "PageException/XoaHieu";
        }
        return "redirect:/admin/hieusp/1";
    }

    @GetMapping(value = "/updatehieusp/{idhieusanpham}")
    public String updateHieuSanPham(@PathVariable("idhieusanpham") Integer idHieuSanPham, Model model){
        model.addAttribute("hieuSanPham",hieusanphamService.getHieuSanPhambyId(idHieuSanPham));
        return "/Hieusanpham/updatehieusp";
    }
}
