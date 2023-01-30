package com.example.demo.Services;

import java.util.List;


import com.example.demo.entity.TinTuc;

public interface TinTucService {

	List<TinTuc> getListTinTuc();
	void saveTinTuc(TinTuc tinTuc);
	void deleteTinTuc(Integer idTinTuc);
	TinTuc getTinTucbyId(Integer idTinTuc);
}
