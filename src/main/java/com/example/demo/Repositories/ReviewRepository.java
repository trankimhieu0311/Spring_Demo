package com.example.demo.Repositories;

import com.example.demo.entity.Review;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface ReviewRepository extends JpaRepository<Review, Integer> {
    @Query("select u from Review u where u.sanPham.idSanPham =:id")
    List<Review> getListPreview(int id);

    @Query("select AVG(rate) from Review where sanPham.idSanPham =:id")
    Double rateAVGbyId(int id);
}
