package com.example.demo.Repositories;

import com.example.demo.entity.User_Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;


public interface User_RoleRepository extends JpaRepository<User_Role, Integer> {
//        @Query("SELECT new com.example.demo.User_Role(ph.User.userName, ph.User. email) from User ph group by ph.User_Role.userId")
//        List<>

    @Query("select u from User_Role u where u.userId.userId =:id")
    User_Role getUser_RoleByIdUser(int id);

}
