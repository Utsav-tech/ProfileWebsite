package com.ualbany.daneeats.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.ualbany.daneeats.model.Order;
import com.ualbany.daneeats.service.OrderService;

@Controller
@RequestMapping("/delivery")
public class DeliveryController {

	@Autowired
	OrderService  orderservice;
	
	
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
    @GetMapping("/availableorders")
    public ModelAndView availableOrders() {
       System.out.print("hello");
       ModelAndView modelandview1 =new ModelAndView("ViewOrders");
       List<Order> aorders=orderservice.findByStatus("init",1);
       
       modelandview1.addObject("Aorders",aorders);
		return modelandview1;
    } 
  @GetMapping("/currentorders")
    public ModelAndView currentOrders() {
       System.out.print("hello");
       ModelAndView modelandview2 =new ModelAndView("CurrentOrders");
       List<Order> corders=orderservice.findByStatus("acpt",1);
       
       modelandview2.addObject("Corders",corders);
		return modelandview2;
    } 
  @GetMapping("/previousordersd")
    public ModelAndView previousOrdersD() {
       System.out.print("hello");
       ModelAndView modelandview3 =new ModelAndView("PreviousOrdersD");
       List<Order> pordersD=orderservice.findByStatus("dlvd",1);
       
       modelandview3.addObject("PordersD",pordersD);
		return modelandview3;
    } 
  @PostMapping("/acceptorders")
    public ModelAndView acceptOrders(@RequestBody Integer id) {
       System.out.print("hello");
       ModelAndView modelandview4 =new ModelAndView("ProcessOrder");
       return modelandview4;
  }
}
