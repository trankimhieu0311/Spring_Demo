package com.example.demo.model.mapper;

import com.example.demo.entity.SanPham;
import com.example.demo.model.dto.SanPhamDTO;

public class SanphamMapper {
    public static SanPhamDTO sanPhamDTO(SanPham sanPham){
        SanPhamDTO tmp = new SanPhamDTO();
        tmp.setIdSanPham(sanPham.getIdSanPham());
        tmp.setTenSanPham(sanPham.getTenSanPham());
        tmp.setHinhAnhSanPham(sanPham.getHinhAnhSanPham());
        tmp.setGiaDeXuat(sanPham.getGiaDeXuat());
        tmp.setGiaGiam(sanPham.getGiaGiam());
        return tmp;
    }
}
