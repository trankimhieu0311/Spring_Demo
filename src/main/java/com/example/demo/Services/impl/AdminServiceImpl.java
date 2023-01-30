package com.example.demo.Services.impl;

import com.example.demo.Repositories.AdminRepository;
import com.example.demo.Services.AdminService;
import com.example.demo.entity.Admin;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AdminServiceImpl implements AdminService {
    @Autowired private AdminRepository adminRepository;

    @Override
    public List<Admin> getListAdmin() {
        return adminRepository.findAll();
    }

    @Override
    public Admin getAdminbyId(Integer id) {
        return adminRepository.findById(id).orElse(null);
    }
}
