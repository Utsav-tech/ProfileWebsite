package com.ualbany.daneeats.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "MenuItem")
public class MenuItem {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Integer Id;

    private String name;

    private Double price;

  

    private Integer restaurantId;

    public Integer getId(){
        return Id;
    }

    public String getName(){
        return name;
    }

    public void setName(String name){
        this.name = name;
    }
    
    public Double getPrice(){
        return price;
    }

    public void setPrice(Double price){
        this.price = price;
    }

   

    public Integer getRestaurantId(){
        return restaurantId;
    }

    public void setRestaurantId(Integer restaurantId){
        this.restaurantId = restaurantId;
    }
}
