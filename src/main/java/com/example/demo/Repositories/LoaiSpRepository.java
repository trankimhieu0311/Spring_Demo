package com.example.demo.Repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Loaisp;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface LoaiSpRepository extends JpaRepository<Loaisp, Integer> {
    @Query(nativeQuery = true, value = "SELECT * FROM loaisp ORDER BY idLoaiSp DESC ")
    List<Loaisp> getLoaispByDESC();

    @Query(nativeQuery = true, value = "SELECT * FROM loaisp WHERE tinhtrang=1")
    List<Loaisp> getLoaispByTinhTrang();

    @Query("SELECT e FROM Loaisp e ORDER BY e.idLoaiSp DESC ")
    Page<Loaisp> getLoaisanphamByPhanTrang(Pageable pageable);

    @Query("SELECT u FROM Loaisp u WHERE u.idLoaiSp = :idLoaiSanPham")
    Loaisp getTenLoaiSanPhamByIdLoaiSanPham(int idLoaiSanPham);
}
