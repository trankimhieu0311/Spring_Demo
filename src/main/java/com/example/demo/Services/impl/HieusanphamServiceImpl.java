package com.example.demo.Services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.Repositories.HieusanphamRepository;
import com.example.demo.Services.HieusanphamService;
import com.example.demo.entity.Hieusanpham;
import org.springframework.web.multipart.MultipartFile;

@Service
public class HieusanphamServiceImpl implements HieusanphamService{
	@Autowired
	private HieusanphamRepository hieuSanPhamRepository;
	@Autowired
	private UploadServiceImpl uploadService;


	@Override
	public Page<Hieusanpham> findHieuSanPhambyPhanTrang(Pageable pageable) {
		return hieuSanPhamRepository.getHieusanphamByPhanTrang(pageable);
	}

	@Override
	public void saveHieuSanPham(Hieusanpham hieusanpham, MultipartFile multipartFile) {
		String fileName = uploadService.uploadImagesBrand(multipartFile);
		if(fileName == null && hieusanpham.getHinhAnhHieuSanPham() != null){
			hieuSanPhamRepository.save(hieusanpham);
		}else{
			hieusanpham.setHinhAnhHieuSanPham(fileName);
			hieuSanPhamRepository.save(hieusanpham);
		}
	}

	@Override
	public void deleteHieuSanPham(Integer idHieuSanPham) {
		hieuSanPhamRepository.deleteById(idHieuSanPham);
	}

	@Override
	public Hieusanpham getHieuSanPhambyId(Integer idHieuSanPham) {
		return hieuSanPhamRepository.findById(idHieuSanPham).orElse(null);
	}

	@Override
	public List<Hieusanpham> getListHieuSanPhambyTrangThai() {
		return hieuSanPhamRepository.getHieuspByTinhTrang();
	}

}
