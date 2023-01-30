package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;
import java.time.LocalDateTime;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "sanpham")
public class SanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idsanpham")
    private Integer idSanPham;

    @Column(name = "tensp")
    private String tenSanPham;

    @Column(name = "masp", unique = true)
    private String maSanPham;

    @Column(name = "hinhanh")
    private String hinhAnhSanPham;

    @Column(name = "mota")
    private String moTa;

    @Column(name = "giadexuat")
    private Float giaDeXuat;

    @Column(name = "giagiam", nullable = true)
    private Float giaGiam;

    @Column(name = "soluong")
    private Integer soLuongSanPham;

    @Column(name = "tinhtrang")
    private Integer tinhTrangSanPham;

    @Column(name = "baohanh")
    private Integer thoigianbaohanh;

    @ManyToOne
    @JoinColumn(name = "loaisp", nullable = false)
    private Loaisp loaisp;

    @ManyToOne
    @JoinColumn(name = "hieusp", nullable = false)
    private Hieusanpham hieusanpham;

    @Column(name = "quantam")
    private LocalDateTime quanTam;

    @Column(name = "nguoixem")
    private String nguoiXem;

}
