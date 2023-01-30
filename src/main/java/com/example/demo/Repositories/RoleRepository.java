package com.example.demo.Repositories;

import com.example.demo.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import java.util.List;

public interface RoleRepository extends JpaRepository<Role, Integer> {
    @Query(nativeQuery = true,value = "SELECT r.* FROM role r join user_role ur on r.id = ur.role " +
            "JOIN user u ON ur.user = u.id_khachhang " +
            "WHERE u.email = :email")
    List<Role> findUser_RoleByUserName(String email);

    @Query(value = "SELECT u FROM Role u WHERE u.roleName = :roleName")
    Role getRoleUserByName(String roleName);
}
