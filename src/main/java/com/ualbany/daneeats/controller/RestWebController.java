package com.ualbany.daneeats.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.ualbany.daneeats.model.MenuItem;
import com.ualbany.daneeats.model.Order;
import com.ualbany.daneeats.model.OrderItem;
import com.ualbany.daneeats.model.OrderStatus;
import com.ualbany.daneeats.model.Persistable;
import com.ualbany.daneeats.model.Response;
import com.ualbany.daneeats.model.User;
import com.ualbany.daneeats.repository.MenuItemRepository;
import com.ualbany.daneeats.repository.UserRepository;
import com.ualbany.daneeats.service.OrderService;

@RestController
@RequestMapping("/api")
public class RestWebController {
	
	@Autowired
	OrderService  orderservice;
	
	@Autowired
	UserRepository userrepo;
	
	@Autowired
	MenuItemRepository menurepo;
	
	@PostMapping(value = "/order/save")
	public Response postCustomer(@RequestBody String order) {
		//cust.add(customer);
		JSONObject jsonOrder = new JSONObject(order.toString());
		
		Order ord = new Order();
		User user = userrepo.findById(jsonOrder.getLong("customerId")).get();
		ord.setCustomer(user);
		ord.setStatus(OrderStatus.NEW);
		JSONArray jsonitems = jsonOrder.getJSONArray("items");
		List<OrderItem> items = new ArrayList<OrderItem>();
		for(int i=0; i< jsonitems.length(); i++) 
		{
			JSONObject jsonitem = jsonitems.getJSONObject(i);
			OrderItem item = new OrderItem();
			MenuItem menuItem = menurepo.findById(jsonitem.getLong("menuId")).get();
			item.setMenuItem(menuItem);
			item.setQuantity(jsonitem.getInt("quantity"));
			item.setOrder(ord);
			setpersistableproperties(item, user);
			items.add(item);
		}
		ord.setItems(items);
		ord.setSource(items.get(0).getMenuItem().getRestaurant().getName());
		ord.setDestination(jsonOrder.getString("destination"));
		setpersistableproperties(ord, user);
		orderservice.save(ord); 
		// Create Response Object
		Response response = new Response("Done", jsonOrder);
		return response;
	}
	
	void setpersistableproperties(Persistable ps, User user) {
		Date now = new Date();
		ps.setCreatedAt(now);
		ps.setUpdatedAt(now);
		ps.setCreatedBy(user);
		ps.setUpdatedBy(user);
	}
}