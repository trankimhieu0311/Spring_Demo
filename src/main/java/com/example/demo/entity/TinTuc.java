package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "tintuc")
public class TinTuc {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "idtintuc")
	private Integer idTinTuc;
	
	@Column(name = "tentintuc")
	private String tenTinTuc;

	@Column(name = "matin")
	private String maTin;

	@Column(name = "hinhanh")
	private String hinhAnh;

	@Column(name = "noidung")
	private String noiDung;

	@Column(name= "tinhtrang")
	private Integer tinhTrang;

}
