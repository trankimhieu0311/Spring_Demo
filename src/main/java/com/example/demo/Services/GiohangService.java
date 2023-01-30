package com.example.demo.Services;

import com.example.demo.entity.giohang;

import java.util.List;

public interface GiohangService {
    void addToCart(int id, int soluong);
    List<giohang> getListProduct();

    void removeToCart(int id);

    double getTongTien();

    void additionProduct(int id);

    void substractionProduct(int id);

    long countProducts();

    void clearProduct();

    int currentQuantity(int id);
}
