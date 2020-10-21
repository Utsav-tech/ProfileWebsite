package com.ualbany.daneeats.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ualbany.daneeats.model.MenuItem;
import com.ualbany.daneeats.model.Restaurant;
import com.ualbany.daneeats.repository.RestaurantRepository;

@Service
public class RestaurantService {
	
    @Autowired
    private RestaurantRepository repository;

    public void save(Restaurant r) {
    	repository.save(r);
    }

    public Restaurant findById(Long id) {
    	Optional<Restaurant> restaurant= repository.findById(id);
    	if(restaurant.isPresent())
    		return restaurant.get();
    	else
    		return null;
    }
    
    public List<MenuItem> findAllMenuItems(Long id) {
    	List<MenuItem> menuItems= null;//repository.findById(id);
   		return menuItems;
    }
    
    public List<Restaurant> findAll() {
   		return repository.findAll();
    }
}
