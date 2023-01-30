package com.example.demo.Services;

import java.util.List;

import com.example.demo.entity.Loaisp;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

public interface LoaiSpService {

	Page<Loaisp> findLoaiSanPhambyPhanTrang(Pageable pageable);
	void saveLoaiSanPham(Loaisp loaisp);
	void deleteLoaiSanPham(Integer idLoaiSanPham);
	Loaisp getLoaiSanPhambyId(Integer idLoaiSanPham);
	List<Loaisp> getListLoaiSanPhambyTrangThai();
}
