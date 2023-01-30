package com.example.demo.Repositories;

import com.example.demo.entity.GiohangKH;
import com.example.demo.entity.giohang;
import com.example.demo.model.dto.GiohangDTO;
import com.example.demo.model.dto.billDTO;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;


public interface GiohangRepository extends JpaRepository<giohang, Integer> {
    @Query("SELECT new com.example.demo.model.dto.billDTO(gh.giohangKH.Id, gh.giohangKH.userName, gh.giohangKH.address, gh.giohangKH.phoneNumber, gh.giohangKH.phuongthucthanhtoan, gh.giohangKH.trangThai) FROM giohang gh group by gh.giohangKH.Id")
    List<billDTO> getAllBill();
    @Modifying
    @Transactional
    @Query("DELETE FROM giohang u where u.giohangKH.Id = :id")
    void deleteByIdGioHangKH(int id);

    @Query("SELECT new com.example.demo.model.dto.GiohangDTO(u, SUM(u.tongTien)) from giohang u where u.giohangKH.Id = :id group by u.id")
    List<GiohangDTO> findAllBillByIdGioHang(int id);

    @Query("select y from GiohangKH y where y.Id = :id")
    GiohangKH findgiohangKHById(int id);

    @Query("SELECT new com.example.demo.model.dto.GiohangDTO(u, SUM(u.tongTien)) from giohang u group by u.id")
    List<GiohangDTO> findAlldonhangIdGiohang();

    @Query("SELECT new com.example.demo.model.dto.billDTO(gh.giohangKH.Id, gh.giohangKH.userName, gh.giohangKH.address, gh.giohangKH.phoneNumber, gh.giohangKH.phuongthucthanhtoan, gh.giohangKH.trangThai) " +
            "FROM giohang gh WHERE gh.giohangKH.userName = :name group by gh.giohangKH.Id")
    List<billDTO> searchBill(String name);

}