package com.ualbany.daneeats.controller;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ualbany.daneeats.model.Order;
import com.ualbany.daneeats.model.Response;
import com.ualbany.daneeats.model.User;
import com.ualbany.daneeats.service.CustomerCartService;
import com.ualbany.daneeats.service.OrderService;

@RestController
@RequestMapping("/api")
public class RestWebController {
	
	@Autowired
	OrderService  orderservice;
	

	@PostMapping(value = "/customer/save")
	public Response postCustomer(@RequestBody String items) {
		//cust.add(customer);
		JSONArray array = new JSONArray(items); 
		JSONObject object = array.getJSONObject(0);
		Order ord = new Order();
		User user = new User();
		ord.setUser(user);
		ord.setQuantity(object.getDouble("quantity"));
		ord.setPrice(object.getDouble("price"));
		orderservice.save(ord); 
		// Create Response Object
		Response response = new Response("Done", items);
		return response;
	}
}