package com.ualbany.daneeats.repository;

import com.ualbany.daneeats.model.Order;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

public interface OrderRepository extends JpaRepository<Order, Long> {
	public List<Order> findByStatusAndAgentId(String str,Integer id);
    
    
}
