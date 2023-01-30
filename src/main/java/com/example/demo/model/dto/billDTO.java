package com.example.demo.model.dto;

import com.example.demo.entity.GiohangKH;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class billDTO {
    private Integer id;
    private String userName;
    private String address;
    private String phoneNumber;
    private int phuongThucThanhToan;
    private int trangThai;

    public billDTO(GiohangKH giohangKH, int trangThai) {
        this.id = giohangKH.getId();
        this.userName = giohangKH.getUserName();
        this.address = giohangKH.getAddress();
        this.phoneNumber = giohangKH.getPhoneNumber();
        this.phuongThucThanhToan = giohangKH.getPhuongthucthanhtoan();
        this.trangThai = trangThai;
    }
}
