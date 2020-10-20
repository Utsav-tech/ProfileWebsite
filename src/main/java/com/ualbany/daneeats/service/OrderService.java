package com.ualbany.daneeats.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.ualbany.daneeats.model.Order;
import com.ualbany.daneeats.repository.OrderRepository;

@Service
public class OrderService {
    @Autowired
    private OrderRepository repository;

    public void save(Order o) {
    	repository.save(o);
    }

    public Order findById(Integer id) {
    	Optional<Order> Order= repository.findById(id);
    	if(Order.isPresent())
    		return Order.get();
    	else
    		return null;
    }

    public List<Order> findByStatus(String str,Integer id) {
    	List<Order> order= repository.findByStatusAndAgentId(str,id);
    	return order;
    }
    public List<Order> findAll() {
    	List<Order> orders = repository.findAll();
        return orders;
    }
    
    public List<Order> findAllByCustomerId() {
    	List<Order> orders = repository.findAll();
        return orders;
    }

    public List<Order> findAllByDeliveryId() {
    	List<Order> orders = repository.findAll();
        return orders;
    }
}
