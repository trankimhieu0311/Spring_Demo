package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "donhang")
public class Donhang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "idsanpham")
    private Integer idSanPham;

    @Column(name = "hinhanh")
    private String hinhAnhSanPham;

    @Column(name = "tensp")
    private String tenSanPham;

    @Column(name = "createtime")
    @CreationTimestamp
    private Date createtime;
}
