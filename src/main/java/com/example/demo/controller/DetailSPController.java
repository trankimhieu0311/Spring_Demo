package com.example.demo.controller;

import com.example.demo.Repositories.SanphamRepository;
import com.example.demo.Repositories.UserRepository;
import com.example.demo.Services.GiohangService;
import com.example.demo.Services.ReviewSevice;
import com.example.demo.Services.SanphamService;
import com.example.demo.Services.UserService;
import com.example.demo.config.SecurityUtils;
import com.example.demo.entity.Review;
import com.example.demo.entity.SanPham;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.time.LocalDateTime;
import java.util.Optional;


@Controller
public class DetailSPController {
    @Autowired private SanphamService sanphamService;
    @Autowired private UserRepository userRepository;
    @Autowired private ReviewSevice reviewSevice;
    @Autowired private GiohangService giohangService;
    @Autowired
    private SanphamRepository sanphamRepository;
    @GetMapping(value = "/detailsap/{id}")
    public String detailsap(Model model,@PathVariable int id){
        SanPham sanPham = sanphamRepository.findById(id).orElse(null);
        if (sanPham != null) {
            String name = SecurityUtils.getNameUserCurrent();
            sanphamRepository.updateQuanTam(LocalDateTime.now(),name, id);
        }
       model.addAttribute("sanpham", sanphamService.getSanPhambyId(id));
        if(SecurityUtils.getNameUserCurrent() != "anonymousUser"){
            model.addAttribute("userr", userRepository.findUserByEmail(SecurityUtils.getPrincipal().getEmail()));
        }
        model.addAttribute("listReivew", reviewSevice.getListReview(id));
        model.addAttribute("userCurrent", SecurityUtils.getNameUserCurrent());
        model.addAttribute("rate", reviewSevice.rateAVGbyId(id));
        model.addAttribute("curentQuantity", giohangService.currentQuantity(id));
        return "Deatilsanpham/detailsap";
    }

    @PostMapping(value ="/saveComment")
    public String saveReview(Review review, @RequestParam(name = "sanPham") Integer id){
        reviewSevice.saveReview(review);
        return "redirect:/detailsap/" + id;
    }

}
