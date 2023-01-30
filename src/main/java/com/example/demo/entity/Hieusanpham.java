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
@Entity
@Table(name = "hieusp")
public class Hieusanpham {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idhieusp")
	private Integer idHieuSanPham;
	
	@Column(name = "tenhieusp")
	private String tenHieuSanPham;

	@Column(name = "logoBrand")
	private String hinhAnhHieuSanPham;
	
	@Column(name = "tinhtrang")
	private String tinhTrang;

}
