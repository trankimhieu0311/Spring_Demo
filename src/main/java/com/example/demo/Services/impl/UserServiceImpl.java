package com.example.demo.Services.impl;

import com.example.demo.Repositories.RoleRepository;
import com.example.demo.Repositories.UserRepository;
import com.example.demo.Repositories.User_RoleRepository;
import com.example.demo.Services.UploadService;
import com.example.demo.Services.UserService;
import com.example.demo.entity.User;
import com.example.demo.entity.User_Role;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

@Service
public class UserServiceImpl implements UserService {
    @Autowired private UploadService uploadService;
    @Autowired private UserRepository userRepository;
    @Autowired
    private BCryptPasswordEncoder encoder;
    @Autowired
    private RoleRepository roleRepository;
    @Autowired
    private User_RoleRepository user_roleRepository;

    @Override
    public void saveUser(User user, MultipartFile file) {
        user.setPassword(encoder.encode(user.getPassword()));
        if (file != null && !file.isEmpty()){
            String filename = uploadService.UploadAvatar(file);
            user.setAvatar(filename);
        }
        User userSave = userRepository.save(user);
        User_Role userRole = new User_Role();
        userRole.setUserId(userSave);
        userRole.setRoleId(roleRepository.getRoleUserByName("ROLE_USER"));
        user_roleRepository.save(userRole);
    }
}
