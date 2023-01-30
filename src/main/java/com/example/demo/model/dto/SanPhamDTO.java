package com.example.demo.model.dto;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class SanPhamDTO {
    private int idSanPham;

    private String tenSanPham;

    private String hinhAnhSanPham;

    private Float giaDeXuat;

    private Float giaGiam;

}
