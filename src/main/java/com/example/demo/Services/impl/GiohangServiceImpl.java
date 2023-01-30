package com.example.demo.Services.impl;

import com.example.demo.Repositories.SanphamRepository;
import com.example.demo.Services.GiohangService;
import com.example.demo.Services.SanphamService;
import com.example.demo.entity.SanPham;
import com.example.demo.entity.giohang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.context.annotation.SessionScope;

import java.util.ArrayList;
import java.util.List;

@Service
@SessionScope
public class GiohangServiceImpl implements GiohangService {
    private List<giohang> cart;

    public GiohangServiceImpl() {
        cart = new ArrayList<>();
    }

    @Autowired private SanphamService sanphamService;
@Autowired private SanphamRepository sanphamRepository;
    @Override
    public void addToCart(int id, int soluong) {
        SanPham sanPham1 = sanphamRepository.findById(id).orElse(null);
        giohang g = cart.stream().filter(e -> e.getSanPham().getIdSanPham().equals(id)).findFirst().orElse(null);
        if(g != null){
            if(soluong <= sanPham1.getSoLuongSanPham()){
                g.setSoLuongSanPham(soluong);
            }else{
                System.out.println("hihi");
                g.setSoLuongSanPham(sanPham1.getSoLuongSanPham());
            }
            g.setTongTien(g.getSanPham().getGiaGiam() != null ? g.getSanPham().getGiaGiam() * g.getSoLuongSanPham() : g.getSanPham().getGiaDeXuat() * g.getSoLuongSanPham());
        }else{
            SanPham sanPham = sanphamService.getSanPhambyId(id);
            if(sanPham != null){
                giohang giohang = new giohang();
                giohang.setSanPham(sanPham);
                if(soluong > sanPham1.getSoLuongSanPham()){
                    soluong = sanPham1.getSoLuongSanPham();
                }
                giohang.setSoLuongSanPham(soluong);
                giohang.setTongTien(sanPham.getGiaGiam() != null ? sanPham.getGiaGiam() * soluong : sanPham.getGiaDeXuat() * soluong);
                cart.add(giohang);
            }
        }
    }

    @Override
    public List<giohang> getListProduct() {
        return cart;
    }

    @Override
    public void removeToCart(int id) {
        cart.stream().filter(e -> e.getSanPham().getIdSanPham().equals(id)).findFirst().ifPresent(e -> cart.remove(e));
    }

    @Override
    public double getTongTien() {
        return cart.stream().map(giohang::getTongTien).reduce(0.0,(a,b)->a+b);
    }

    @Override
    public void additionProduct(int id) {
        giohang g = cart.stream().filter(e -> e.getSanPham().getIdSanPham().equals(id)).findFirst().orElse(null);
        g.setSoLuongSanPham(g.getSoLuongSanPham() + 1);
        g.setTongTien(g.getSanPham().getGiaGiam() != null ? g.getSanPham().getGiaGiam() * g.getSoLuongSanPham() : g.getSanPham().getGiaDeXuat() * g.getSoLuongSanPham());
    }

    @Override
    public void substractionProduct(int id) {
        giohang g = cart.stream().filter(e -> e.getSanPham().getIdSanPham().equals(id)).findFirst().orElse(null);
        g.setSoLuongSanPham(g.getSoLuongSanPham() - 1);
        g.setTongTien(g.getSanPham().getGiaGiam() != null ? g.getSanPham().getGiaGiam() * g.getSoLuongSanPham() : g.getSanPham().getGiaDeXuat() * g.getSoLuongSanPham());
        if(g.getSoLuongSanPham() == 0){
            removeToCart(id);
        }
    }

    @Override
    public long countProducts() {
        return cart.stream().count();
    }

    @Override
    public void clearProduct(){
        cart.clear();
    }

    @Override
    public int currentQuantity(int id){
        giohang g = cart.stream().filter(e -> e.getSanPham().getIdSanPham().equals(id)).findFirst().orElse(null);
        int tam = 1;
        if(g == null){
            return tam;
        }else{
            tam = g.getSoLuongSanPham();
        }
        return tam;
    }
}
