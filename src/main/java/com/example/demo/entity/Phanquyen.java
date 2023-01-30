package com.example.demo.entity;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Table;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "Phanquyen")
public class Phanquyen {
    @Column(name = "idUser")
    private Integer idUser;

    @Column(name = "tenkhachhang")
    private String userName;

    @Column(name = "email")
    private String email;

    @Column(name = "dienthoai")
    private String phoneNumber;

    @Column(name = "quyen")
    private int trangThai = 1;


}
