package com.example.demo.Services;

import com.example.demo.entity.SanPham;
import com.example.demo.model.dto.SanPhamDTO;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.ResponseEntity;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface SanphamService {
    List<SanPhamDTO> getSanPhambyDESC();

    void deleteSanPham(Integer idSanPham);

    void saveSanPham(SanPham sanPham, MultipartFile fileHinhAnh);

    SanPham getSanPhambyId(Integer idSanPham);

    Page<SanPham> getSanPhambyPriceASC(Pageable pageable);

    Page<SanPham> findSanPhamByphantrang(Pageable pageable);

    List<SanPhamDTO> getSanPhamBySearch(String search, Float price);

//    @Cacheable(value = "SanphamList")
//    ResponseEntity<SanPham> findAll(String tenSanPham, String maSanPham, Float giaDeXuat);
}
