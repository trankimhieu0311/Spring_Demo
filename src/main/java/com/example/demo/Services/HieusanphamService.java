package com.example.demo.Services;

import java.util.List;

import com.example.demo.entity.Hieusanpham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.multipart.MultipartFile;

public interface HieusanphamService {
//	List<Hieusanpham> getHieuSanPham();
	Page<Hieusanpham> findHieuSanPhambyPhanTrang(Pageable pageable);
	void saveHieuSanPham(Hieusanpham hieusanpham, MultipartFile multipartFile);
	void deleteHieuSanPham(Integer idHieuSanPham);
	Hieusanpham getHieuSanPhambyId(Integer idHieuSanPham);
	List<Hieusanpham> getListHieuSanPhambyTrangThai();
}
