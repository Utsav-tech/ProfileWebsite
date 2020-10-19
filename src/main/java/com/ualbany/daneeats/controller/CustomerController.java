package com.ualbany.daneeats.controller;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ualbany.daneeats.model.Order;
import com.ualbany.daneeats.model.Response;
import com.ualbany.daneeats.model.User;
import com.ualbany.daneeats.service.MenuItemService;
import com.ualbany.daneeats.service.OrderService;
import com.ualbany.daneeats.service.RestaurantService;

@Controller
@RequestMapping("/customer")
public class CustomerController {

	@Autowired
	OrderService  orderservice;
	
	@Autowired
	MenuItemService menuservice;
	
	@Autowired
	RestaurantService restaurantservice;
	
    @PostMapping("/profile")//for both /,welcome this will be called
    public ModelAndView profilePost(Model model) {
    	 ModelAndView mv = new ModelAndView("customerprofile");
         return mv;
    }
    
    @GetMapping("/profile")//for both /,welcome this will be called
    public ModelAndView profileGet(Model model) {
        ModelAndView mv = new ModelAndView("customerprofile");
        return mv;
    }
    
    @PostMapping("/placeorder")//for both /,welcome this will be called
    public ModelAndView placeOrderPost(Model model) {
    	 ModelAndView mv = new ModelAndView("customer");
         return mv;
    }
    
    @GetMapping("/placeorder")//for both /,welcome this will be called
    public ModelAndView placeOrderGet(Model model) {
        ModelAndView mv = new ModelAndView("customer");
        return mv;
    }
    
    @PostMapping("/menu")//for both /,welcome this will be called
    public ModelAndView menuPost(Model model) {
    	ModelAndView mv = new ModelAndView("menu");
        return mv;
    }
    
    @GetMapping("/menu")//for both /,welcome this will be called
    public ModelAndView menuGet(Model model) {
    	ModelAndView mv = new ModelAndView("menu");
        return mv;
    }
    
    @GetMapping("/pastorders")
    public ModelAndView pastorders() {
       System.out.print("hello");
       ModelAndView modelandview =new ModelAndView("orders");
       List<Order> orders=orderservice.findAll();
       
       modelandview.addObject("orders",orders);
		return modelandview;
    } 
    @GetMapping("/currentorders")
    public ModelAndView currentorders() {
       System.out.print("hello");
       ModelAndView modelandview =new ModelAndView("orders");
       List<Order> orders=orderservice.findAll();
       
       modelandview.addObject("orders",orders);
		return modelandview;
    }
}
