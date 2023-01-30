package com.example.demo.Services.impl;

import com.example.demo.Repositories.GiohangKHRepository;
import com.example.demo.Repositories.GiohangRepository;
import com.example.demo.Repositories.UserRepository;
import com.example.demo.Repositories.User_RoleRepository;
import com.example.demo.Services.GiohangKHService;
import com.example.demo.Services.GiohangService;
import com.example.demo.config.SecurityUtils;
import com.example.demo.entity.GiohangKH;
import com.example.demo.entity.User;
import com.example.demo.entity.giohang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class GiohangKHServiceImpl implements GiohangKHService {
    @Autowired private GiohangKHRepository giohangKHRepository;
    @Autowired private GiohangService giohangService;
    @Autowired private GiohangRepository giohangRepository;
    @Autowired private UserRepository userRepository;
    @Override
    public void buyProduct(GiohangKH giohangKH) {
        String email = SecurityUtils.getPrincipal().getEmail();
        User user = userRepository.findUserByEmail(email);
        giohangKH.setIdUser(user.getUserId());
        GiohangKH save = giohangKHRepository.save(giohangKH);
        List<giohang> list = giohangService.getListProduct();
        list.forEach(e -> e.setGiohangKH(save));
        giohangRepository.saveAll(list);
        giohangService.clearProduct();
    }


}
