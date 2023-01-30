package com.example.demo.model.dto;

import com.example.demo.entity.GiohangKH;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.giohang;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor

public class GiohangDTO {

    private Integer id;

    private GiohangKH giohangKH;

    private SanPham sanPham;

    private Integer soLuongSanPham;

    private double tongTien;

    private Date createDateTime;

    private double tongTien2;


    public GiohangDTO(giohang giohang, double tongTien2) {
        this.id = giohang.getId();
        this.giohangKH = giohang.getGiohangKH();
        this.sanPham = giohang.getSanPham();
        this.soLuongSanPham = giohang.getSoLuongSanPham();
        this.tongTien = giohang.getTongTien();
        this.createDateTime = giohangKH.getCreateDateTime();
        this.tongTien2 = tongTien2;
    }
}
