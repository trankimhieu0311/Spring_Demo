package com.example.demo.Repositories;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import com.example.demo.entity.TinTuc;

public interface TinTucRepository extends JpaRepository<TinTuc, Integer>{
	
	@Query(nativeQuery = true,value = "SELECT * FROM tintuc")
	List<TinTuc> findAllTinTuc();
}
