package com.ualbany.daneeats.repository;

import com.ualbany.daneeats.model.Restaurant;

import org.springframework.data.jpa.repository.JpaRepository;

public interface RestaurantRepository extends JpaRepository<Restaurant, Long> {
    
}
