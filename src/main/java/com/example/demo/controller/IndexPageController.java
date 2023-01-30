package com.example.demo.controller;

import com.example.demo.Repositories.HieusanphamRepository;
import com.example.demo.Repositories.LoaiSpRepository;
import com.example.demo.Repositories.SanphamRepository;
import com.example.demo.Repositories.UserRepository;
import com.example.demo.Services.GiohangService;
import com.example.demo.Services.SanphamService;
import com.example.demo.config.SecurityUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class IndexPageController {
    @Autowired private SanphamRepository sanphamRepository;
    @Autowired private LoaiSpRepository loaiSpRepository;
    @Autowired private HieusanphamRepository hieusanphamRepository;
    @Autowired private SanphamService sanphamService;
    @Autowired private GiohangService giohangService;
    @Autowired private UserRepository userRepository;

    @GetMapping(value = "/")
    public String home2(Model model){
        model.addAttribute("listSanPham", sanphamService.getSanPhambyDESC());
        model.addAttribute("listTenLoaiSanPham",loaiSpRepository.getLoaispByDESC());
        model.addAttribute("listTenHieuSanPham",hieusanphamRepository.getHieuspByDESC());
        model.addAttribute("listSanPhambydienthoai", sanphamRepository.getSanPhamByPhone());
        model.addAttribute("listSanPhambytainghe",sanphamRepository.getSanPhamByHeadPhone());
        model.addAttribute("listSanPhambyDongho",sanphamRepository.getSanPhamsByDongho());
        model.addAttribute("userCurrent", SecurityUtils.getNameUserCurrent());
        model.addAttribute("roleCurrent",SecurityUtils.getAuthorities());
        model.addAttribute("count", giohangService.countProducts());
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findUserByEmail(SecurityUtils.getPrincipal().getEmail()));
        }
        return "IndexPage/index";
    }

    @GetMapping(value = "/indexloaisanpham/{id}")
    public String chooseTypeofProduct(Model model, @PathVariable int id){
        model.addAttribute("tenLoaiSanPham", loaiSpRepository.getTenLoaiSanPhamByIdLoaiSanPham(id));
        model.addAttribute("listSanPhambyLoai", sanphamRepository.getListSanPhamByIdLoaiSanPham(id));
        model.addAttribute("listTenLoaiSanPham",loaiSpRepository.getLoaispByDESC());
        model.addAttribute("listTenHieuSanPham",hieusanphamRepository.getHieuspByDESC());
        model.addAttribute("userCurrent", SecurityUtils.getNameUserCurrent());
        model.addAttribute("roleCurrent", SecurityUtils.getAuthorities());
        model.addAttribute("count", giohangService.countProducts());
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findUserByEmail(SecurityUtils.getPrincipal().getEmail()));
        }
        return "IndexPage/indexsanphamtheoloai";
    }

    @GetMapping(value = "/timkiem")
    public String searchSanPham(Model model, @RequestParam(value = "keyword", required = false)String keyword,
                                @RequestParam(value = "price", required = false)Float price){
        model.addAttribute("listTenLoaiSanPham",loaiSpRepository.getLoaispByDESC());
        model.addAttribute("listTenHieuSanPham",hieusanphamRepository.getHieuspByDESC());
        model.addAttribute("sanPham", sanphamService.getSanPhamBySearch(keyword, price));
        model.addAttribute("userCurrent", SecurityUtils.getNameUserCurrent());
        model.addAttribute("roleCurrent", SecurityUtils.getAuthorities());
        model.addAttribute("count", giohangService.countProducts());
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findUserByEmail(SecurityUtils.getPrincipal().getEmail()));
        }
        return "IndexPage/indexsanphamtheotimkiem";
    }

    @GetMapping(value = "/indexhieusanpham/{id}")
    public String chooseBrand(Model model, @PathVariable int id){
        model.addAttribute("tenHieuSanPham", hieusanphamRepository.getTenHieuSanPhamByIdHieuSanPham(id));
        model.addAttribute("listSanPhambyHieu", sanphamRepository.getListSanPhamByIdHieuSanPham(id));
        model.addAttribute("listTenLoaiSanPham",loaiSpRepository.getLoaispByDESC());
        model.addAttribute("listTenHieuSanPham",hieusanphamRepository.getHieuspByDESC());
        model.addAttribute("userCurrent", SecurityUtils.getNameUserCurrent());
        model.addAttribute("roleCurrent", SecurityUtils.getAuthorities());
        model.addAttribute("count", giohangService.countProducts());
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findUserByEmail(SecurityUtils.getPrincipal().getEmail()));
        }
        return "IndexPage/indexsanphamtheohieu";
    }
}
