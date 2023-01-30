package com.example.demo.Repositories;

import com.example.demo.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

public interface UserRepository extends JpaRepository<User, Integer> {
    @Query("select e from User e where e.email = :email")
    User findUserByEmail(String email);

    @Query("select u from User u where u.userId = :id ")
    User findAllByUserIdIs(int id);

}
