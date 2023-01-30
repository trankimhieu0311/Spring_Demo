package com.example.demo.Services.impl;

import com.example.demo.Repositories.User_RoleRepository;
import com.example.demo.Services.User_RoleService;
import com.example.demo.entity.User_Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class User_RoleServiceImpl implements User_RoleService {
    @Autowired private User_RoleRepository user_roleRepository;
    @Override
    public List<User_Role> getAll() {
        return user_roleRepository.findAll();
    }
    @Override
    public User_Role getUserById(int id){
        return user_roleRepository.getUser_RoleByIdUser(id);
    }

    @Override
    public void SaveUser(User_Role user_role){
        user_role.setRoleId(user_role.getRoleId());
        user_roleRepository.save(user_role);
    }
}
