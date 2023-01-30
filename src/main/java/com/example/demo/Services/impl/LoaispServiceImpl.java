package com.example.demo.Services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.example.demo.Repositories.LoaiSpRepository;
import com.example.demo.Services.LoaiSpService;
import com.example.demo.entity.Loaisp;

@Service
public class LoaispServiceImpl implements LoaiSpService{
	
	@Autowired
	private LoaiSpRepository loaispRepository;


	@Override
	public Page<Loaisp> findLoaiSanPhambyPhanTrang(Pageable pageable) {
		return loaispRepository.getLoaisanphamByPhanTrang(pageable);
	}

	@Override
	public void saveLoaiSanPham(Loaisp loaisp) {
		loaispRepository.save(loaisp);
	}

	@Override
	public void deleteLoaiSanPham(Integer idLoaiSanPham) {
		loaispRepository.deleteById(idLoaiSanPham);
	}

	@Override
	public Loaisp getLoaiSanPhambyId(Integer idLoaiSanPham) {
		return loaispRepository.findById(idLoaiSanPham).orElse(null);
	}

	@Override
	public List<Loaisp> getListLoaiSanPhambyTrangThai() {
		return loaispRepository.getLoaispByTinhTrang();
	}

}
