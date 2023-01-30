package com.example.demo.Services.impl;

import com.example.demo.Repositories.SanphamRepository;
import com.example.demo.Services.SanphamService;
import com.example.demo.Services.UploadService;
import com.example.demo.config.SecurityUtils;
import com.example.demo.entity.SanPham;
import com.example.demo.model.dto.SanPhamDTO;
import com.example.demo.model.mapper.SanphamMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;

@Service
@Component
public class SanphamServiceImpl implements SanphamService {
    @Autowired
    private SanphamRepository sanphamRepository;

    @Autowired
    private UploadService uploadService;

    @Override
    public List<SanPhamDTO> getSanPhambyDESC() {
        String name = SecurityUtils.getNameUserCurrent();
        List<SanPhamDTO> result = sanphamRepository.getSanPhamByDESC(name).stream().
                map(e -> SanphamMapper.sanPhamDTO(e)).collect(Collectors.toList());
        return result;
    }

    @Override
    public void deleteSanPham(Integer idSanPham) {
        sanphamRepository.deleteById(idSanPham);
    }

    @Override
    public void saveSanPham(SanPham sanPham, MultipartFile fileHinhAnh) {
        //tạo filename để lấy hình ảnh lưu vào file upload
        String filename = uploadService.uploadImages(fileHinhAnh);
        if (filename == null && sanPham.getHinhAnhSanPham() != null) {
            sanphamRepository.save(sanPham);
        } else {
            sanPham.setHinhAnhSanPham(filename);
            sanphamRepository.save(sanPham);
        }
    }

    @Override
    public SanPham getSanPhambyId(Integer idSanPham) {
        SanPham sp = sanphamRepository.findById(idSanPham).orElse(null);
        return sp;
    }

    @Override
    public Page<SanPham> getSanPhambyPriceASC(Pageable pageable) {
        return sanphamRepository.getSanPhamByPriceASC(pageable);
    }

    @Override
    public Page<SanPham> findSanPhamByphantrang(Pageable pageable) {
        return sanphamRepository.findSanPhamByphantrang(pageable);
    }

    @Override
    public List<SanPhamDTO> getSanPhamBySearch(String search, Float price) {
        List<SanPhamDTO> result = new ArrayList<>();
        try {
            for (SanPham sanpham : sanphamRepository.getSanPhamBySearch(search, price)) {
                result.add(SanphamMapper.sanPhamDTO(sanpham));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}

