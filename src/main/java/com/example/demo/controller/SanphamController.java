package com.example.demo.controller;

import com.example.demo.Services.HieusanphamService;
import com.example.demo.Services.LoaiSpService;
import com.example.demo.Services.SanphamService;
import com.example.demo.entity.SanPham;
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


@Controller
@RequestMapping(value = "admin")
public class SanphamController {
    @Autowired
    private LoaiSpService loaiSpService;
    @Autowired
    private HieusanphamService hieusanphamService;
    @Autowired
    private SanphamService sanphamService;


    @GetMapping(value = "/{page}")
    public String home(Model model, @PathVariable int page) {
        Pageable pageable = PageRequest.of(page - 1,10);
        Page<SanPham> listSanPham = sanphamService.findSanPhamByphantrang(pageable);
        model.addAttribute("listSanPham", listSanPham.getContent());
        model.addAttribute("totalpage", listSanPham.getTotalPages());
        model.addAttribute("currentPage", page);
        return "Thongke/QLsanpham";
    }

    @GetMapping(value = "/sortbyprice/{page}")
    public String home2(Model model, @PathVariable int page) {
        Pageable pageable = PageRequest.of(page - 1,10);
        Page<SanPham> sanPhams = sanphamService.getSanPhambyPriceASC(pageable);
        model.addAttribute("listSanPham", sanPhams.getContent());
        model.addAttribute("totalpage", sanPhams.getTotalPages());
        model.addAttribute("currentPage", page);
        return "Thongke/QLsanpham";
    }

    @GetMapping(value = "/createsp")
    public String createProduct(Model model){
            model.addAttribute("listLoaiSanPham", loaiSpService.getListLoaiSanPhambyTrangThai());
            model.addAttribute("listHieuSanPham", hieusanphamService.getListHieuSanPhambyTrangThai());
            model.addAttribute("sanPham", new SanPham());
        return "Sanpham/createsp";
    }

    @PostMapping(value = "/save")
    //Upload file ảnh, thêm @RequestParam
    public String saveProduct(SanPham sanPham, @RequestParam(name = "file", required = false) MultipartFile fileHinhAnh){
        try {
        sanphamService.saveSanPham(sanPham, fileHinhAnh);
        }catch (DataIntegrityViolationException e){
            return "PageException/exception";
        }
        return "redirect:/admin/1";
    }

    @GetMapping(value = "/delete/{id}")
    public String deleteProduct(@PathVariable("id") Integer id){
        sanphamService.deleteSanPham(id);
        return "redirect:/admin/1";
    }

    @GetMapping(value = "/edit/{id}")
    public String editProduct(@PathVariable("id") Integer id, Model model){
        model.addAttribute("listLoaiSanPham", loaiSpService.getListLoaiSanPhambyTrangThai());
        model.addAttribute("listHieuSanPham", hieusanphamService.getListHieuSanPhambyTrangThai());
        model.addAttribute("sanPham", sanphamService.getSanPhambyId(id));
        return "Sanpham/editsp";
    }

}
