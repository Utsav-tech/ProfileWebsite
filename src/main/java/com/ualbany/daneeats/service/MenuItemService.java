package com.ualbany.daneeats.service;

import java.util.List;
import java.util.Optional;

import com.ualbany.daneeats.model.MenuItem;
import com.ualbany.daneeats.repository.MenuItemRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MenuItemService {

    @Autowired
    private MenuItemRepository repository;

    public void save(MenuItem item) {
        repository.save(item);
    }

    public MenuItem findByName(String name) {
        return repository.findByName(name);
    }

    public List<MenuItem> findAll() {
        return repository.findAll();
    }
    
    public MenuItem findById(Integer id) {
    	Optional<MenuItem> item= repository.findById(id);
    	if(item.isPresent())
    		return item.get();
    	else
    		return null;
    }
}
