package com.example.demo.Services;

import com.example.demo.entity.Admin;

import java.util.List;

public interface AdminService {
    List<Admin> getListAdmin();
    Admin getAdminbyId(Integer id);

}
