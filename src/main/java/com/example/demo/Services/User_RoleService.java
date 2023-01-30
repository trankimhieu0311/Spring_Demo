package com.example.demo.Services;

import com.example.demo.entity.User_Role;

import java.util.List;

public interface User_RoleService {
    List<User_Role> getAll();

    User_Role getUserById(int id);

    void SaveUser(User_Role user_role);
}
