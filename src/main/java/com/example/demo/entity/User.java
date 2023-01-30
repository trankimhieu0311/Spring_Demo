package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.*;

@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "user")
@Entity
public class User {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_khachhang")
    private Integer userId;

    @Column(name = "tenkhachhang")
    private String userName;

    @Column(name = "avatar")
    private String avatar;

    @Column(name = "email")
    private String email;

    @Column(name = "matkhau")
    private String password;

    @Column(name = "dienthoai")
    private String phoneNumber;

    @Column(name = "diachinhan")
    private String address;

}
