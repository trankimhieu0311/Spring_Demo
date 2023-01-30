package com.example.demo.entity;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.GeneratorType;

import javax.persistence.*;
import java.util.Date;

@Entity
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "review")
public class Review {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "idsanpham")
    private SanPham sanPham;

    @ManyToOne
    @JoinColumn(name = "iduser")
    private User user;

    @Column(name = "comment")
    private String comment;

    @Column(name = "createtime")
    @CreationTimestamp
    private Date createtime;

    @Column(name = "rate")
    private int rate;
}
