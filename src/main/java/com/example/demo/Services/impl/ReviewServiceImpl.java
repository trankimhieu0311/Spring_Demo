package com.example.demo.Services.impl;

import com.example.demo.Repositories.ReviewRepository;
import com.example.demo.Services.ReviewSevice;
import com.example.demo.entity.Review;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ReviewServiceImpl implements ReviewSevice {
    @Autowired private ReviewRepository reviewRepository;

    @Override
    public List<Review> getListReview(int id) {
        return reviewRepository.getListPreview(id);
    }

    @Override
    public void saveReview(Review review) {
        reviewRepository.save(review);
           }

    @Override
    public Double rateAVGbyId(int Id){
        return reviewRepository.rateAVGbyId(Id);
    }
}
