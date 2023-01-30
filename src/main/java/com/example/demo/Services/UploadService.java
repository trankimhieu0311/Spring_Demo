package com.example.demo.Services;

import org.springframework.web.multipart.MultipartFile;

public interface UploadService {
    String uploadImages(MultipartFile file);
    String uploadImagesBrand(MultipartFile multipartFile);
    String UploadAvatar(MultipartFile multipartFile);
}
