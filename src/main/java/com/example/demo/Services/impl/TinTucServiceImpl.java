package com.example.demo.Services.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.demo.Repositories.TinTucRepository;
import com.example.demo.Services.TinTucService;
import com.example.demo.entity.TinTuc;
@Service
public class TinTucServiceImpl implements TinTucService{

	@Autowired
	private TinTucRepository tinTucRepository;
	
	@Override
	public List<TinTuc> getListTinTuc() {
		return tinTucRepository.findAll();
	}

	@Override
	public void saveTinTuc(TinTuc tinTuc) {
		tinTucRepository.save(tinTuc);
	}

	@Override
	public void deleteTinTuc(Integer idTinTuc) {
		tinTucRepository.deleteById(idTinTuc);
	}

	@Override
	public TinTuc getTinTucbyId(Integer idTinTuc) {
		return tinTucRepository.findById(idTinTuc).orElse(null);
	}

}
