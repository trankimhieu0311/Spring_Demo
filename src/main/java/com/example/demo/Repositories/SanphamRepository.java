package com.example.demo.Repositories;

import com.example.demo.entity.SanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.time.LocalDateTime;
import java.util.List;

public interface SanphamRepository extends JpaRepository<SanPham, Integer> {
    @Query(nativeQuery = true,value = "SELECT * FROM sanpham WHERE quantam is not null AND nguoixem = :name ORDER BY quantam DESC ")
    List<SanPham> getSanPhamByDESC(String name);

    @Query("SELECT e FROM SanPham e ORDER BY e.giaDeXuat ASC")
    Page<SanPham> getSanPhamByPriceASC(Pageable pageable);

    @Query("SELECT e FROM SanPham e order by e.idSanPham DESC")
    Page<SanPham> findSanPhamByphantrang(Pageable pageable);

    @Query("SELECT u FROM SanPham u WHERE u.loaisp.idLoaiSp = :idLoaiSanPham")
    List<SanPham> getListSanPhamByIdLoaiSanPham(Integer idLoaiSanPham);

    @Query("SELECT u FROM SanPham u WHERE u.hieusanpham.idHieuSanPham = :idHieuSanPham")
    List<SanPham> getListSanPhamByIdHieuSanPham(Integer idHieuSanPham);

    @Query("SELECT u FROM SanPham u WHERE u.loaisp = '63'")
    List<SanPham> getSanPhamByPhone();

    @Query("SELECT u FROM SanPham  u WHERE u.loaisp = '64'")
    List<SanPham> getSanPhamByHeadPhone();

    @Query("SELECT u FROM SanPham u WHERE u.loaisp = '66'")
    List<SanPham> getSanPhamsByDongho();

    @Query(value = "SELECT sp FROM SanPham sp " +
            "WHERE(:search is null or sp.maSanPham like %:search% or sp.tenSanPham like %:search%) " +
            " AND (:price is null or sp.giaDeXuat < :price) "
    )
    List<SanPham> getSanPhamBySearch(String search, Float price);

    @Transactional
    @Modifying
    @Query(value = "UPDATE SanPham u SET u.quanTam = :quanTam, u.nguoiXem =:nguoiXem WHERE u.idSanPham = :idSanPham")
    void updateQuanTam(LocalDateTime quanTam,String nguoiXem ,Integer idSanPham);

}
