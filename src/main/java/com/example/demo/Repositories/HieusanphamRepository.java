package com.example.demo.Repositories;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.entity.Hieusanpham;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface HieusanphamRepository extends JpaRepository<Hieusanpham, Integer> {
    @Query(nativeQuery = true, value = "SELECT * FROM hieusp ORDER BY idhieusp DESC ")
    List<Hieusanpham> getHieuspByDESC();

    @Query(nativeQuery = true, value = "SELECT * FROM hieusp WHERE tinhtrang=1")
    List<Hieusanpham> getHieuspByTinhTrang();

    @Query("SELECT e FROM Hieusanpham e ORDER BY e.idHieuSanPham DESC ")
    Page<Hieusanpham> getHieusanphamByPhanTrang(Pageable pageable);

    @Query("select u from Hieusanpham u where u.idHieuSanPham = :idHieuSanPham")
    Hieusanpham getTenHieuSanPhamByIdHieuSanPham(int idHieuSanPham);

}
