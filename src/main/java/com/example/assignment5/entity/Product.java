package com.example.assignment5.entity;

import lombok.Data;

import javax.persistence.*;

@Entity
@Table(name = "product")
@Data
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Long id;

    private String name;

    private int price;

    @ManyToOne
    private User user;
    @ManyToOne
    private Category category;

    public void setUser(User user){
        if(user == null){
            return;
        }
        this.user = user;
        user.addProduct(this);
    }

    public void setCategory(Category category){
        if(category == null){
            return;
        }
        this.category = category;
        category.addProduct(this);
    }

}