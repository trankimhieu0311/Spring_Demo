package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;

import javax.persistence.*;
import java.util.Date;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "GiohangKH")
public class GiohangKH {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer Id;

    @Column(name = "tenkhachhang")
    private String userName;

    @Column(name = "dienthoai")
    private String phoneNumber;

    @Column(name = "diachinhan")
    private String address;

    @Column(name = "phuongthucthanhtoan")
    private int phuongthucthanhtoan;

    @Column(name = "idUser")
    private Integer idUser;

    @Column(name = "note")
    private String Note;

    @Column(name = "trangthaidonhang")
    private int trangThai = 1;

    @Column(name = "datetimebuy")
    @CreationTimestamp
    private Date createDateTime;
}
