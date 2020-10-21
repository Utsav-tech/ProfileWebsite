package com.ualbany.daneeats.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

import com.ualbany.daneeats.model.MenuItem;

public interface MenuItemRepository extends JpaRepository<MenuItem, Long> {
    MenuItem findByName(String name);
    List<MenuItem> findAll();
}
