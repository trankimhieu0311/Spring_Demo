package com.example.demo.Repositories;

import com.example.demo.entity.GiohangKH;
import com.example.demo.entity.SanPham;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

public interface GiohangKHRepository extends JpaRepository<GiohangKH,Integer> {

    @Query("select u from GiohangKH u Where u.idUser =:id")
    List<GiohangKH> getGiohangKHByIdUser(int id);

//    @Query("select u from GiohangKH u")
//    List<GiohangKH> getBillById();

    @Modifying
    @Transactional
    @Query(nativeQuery = true, value = "update giohangkh Set trangthaidonhang = :status where id = :id")
    void UpdateGioHangKH(int id, int status);
}
