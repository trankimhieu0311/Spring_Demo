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
@Table(name = "loaisp")
public class Loaisp {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idloaisp")
	private Integer idLoaiSp;
	
	@Column(name = "tenloaisp")
	private String tenLoaiSp;
	
	@Column(name = "tinhtrang")
	private String tinhTrang;

}
