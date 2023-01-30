package com.example.demo.Services;

import com.example.demo.entity.User;
import org.springframework.web.multipart.MultipartFile;

public interface UserService {
    void saveUser(User user, MultipartFile file);
}
