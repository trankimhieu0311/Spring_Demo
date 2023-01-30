package com.example.demo.entity;


import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.OnDelete;
import org.hibernate.annotations.OnDeleteAction;

import javax.persistence.*;
import java.util.Date;

@Entity
@Setter
@Getter
@NoArgsConstructor
@AllArgsConstructor
@Table(name = "giohang")
public class giohang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "giohang_KH")
    @OnDelete(action = OnDeleteAction.CASCADE)
    private GiohangKH giohangKH;

    @ManyToOne
    @JoinColumn(name = "idSanPham")
    private SanPham sanPham;


    @Column(name = "soluong")
    private Integer soLuongSanPham;

    @Column(name = "tongtien")
    private double tongTien;

}
