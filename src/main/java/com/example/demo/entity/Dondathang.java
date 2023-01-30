package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "dondathang")
public class Dondathang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "tenkhachhang")
    private String userName;

    @Column(name = "tensanpham")
    private String tenSanPham;

    @Column(name = "diachinhan")
    private String address;

}
