package com.example.demo.Services.impl;

import com.example.demo.Services.UploadService;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.imageio.IIOException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Service
public class UploadServiceImpl implements UploadService {

    //tạo biến FOLDER_FILE đặt đường dẫn cố định
    private final static String FOLDER_FILE = "src/main/webapp/uploadImage/";
    private final static String FILE_NAME_UPLOADIMAGEBRAND = "src/main/webapp/uploadImageBrand/";
    private final static String FILE_NAME_UPLOADAVATAR = "src/main/webapp/uploadAvatar/";


    @Override
    public String uploadImages(MultipartFile file) {
        //bắt lỗi file == null
        if (file == null || file.isEmpty()) {
            return null;
        }
        try {
            //tạo biến pathFile = đường dẫn + lấy tên file ảnh về; vd: src/main/webapp/images/HINHANH
            String pathFile = FOLDER_FILE + file.getOriginalFilename();
            byte[] bytes = file.getBytes();
            Path path = Paths.get(pathFile);
            Files.write(path, bytes);
            return file.getOriginalFilename();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String uploadImagesBrand(MultipartFile multipartFile) {
        if(multipartFile == null || multipartFile.isEmpty()){
            return null;
        }
        try {
            String nameFile = FILE_NAME_UPLOADIMAGEBRAND + multipartFile.getOriginalFilename();
            byte[] bytes = multipartFile.getBytes();
            Path path = Paths.get(nameFile);
            Files.write(path, bytes);
            return multipartFile.getOriginalFilename();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public String UploadAvatar(MultipartFile multipartFile) {
        if(multipartFile == null || multipartFile.isEmpty()){
            return null;
        }
        try {
            String nameFile = FILE_NAME_UPLOADAVATAR + multipartFile.getOriginalFilename();
            byte[] bytes = multipartFile.getBytes();
            Path path = Paths.get(nameFile);
            Files.write(path, bytes);
            return multipartFile.getOriginalFilename();
        } catch (IOException e) {
            e.printStackTrace();
            return null;
        }
    }

}
