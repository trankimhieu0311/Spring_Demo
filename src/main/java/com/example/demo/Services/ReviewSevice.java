package com.example.demo.Services;

import com.example.demo.entity.Review;

import java.util.List;

public interface ReviewSevice {
    List<Review> getListReview(int id);
    void saveReview(Review review);

    Double rateAVGbyId(int Id);
}
