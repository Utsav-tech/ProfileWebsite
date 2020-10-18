package com.ualbany.daneeats.controller;

import com.ualbany.daneeats.model.MenuItem;
import com.ualbany.daneeats.service.MenuItemService;

import java.util.List;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;


@RestController
@RequestMapping("/menuitem")
public class MenuItemController {

    @Autowired 
    private MenuItemService service;

    @PostMapping(path="/add") 
     public @ResponseBody String addNewItem (@RequestParam String name
      , @RequestParam Double price, @RequestParam Integer calories, @RequestParam String description) {

    MenuItem item = new MenuItem();  
    item.setName(name);
    item.setPrice(price);
    service.save(item);
    return "Saved";
  }

  @GetMapping(path="/all")
  public @ResponseBody String getAllItems() {

		List<MenuItem> menuItems = service.findAll();
		JSONArray jsonArray = new JSONArray();

		for (MenuItem item : menuItems)
		{
			JSONObject jsonObject = new JSONObject();
			jsonObject.put("id", item.getId());
			jsonObject.put("name", item.getName());
			jsonObject.put("price", item.getPrice());
			jsonObject.put("restaurant", item.getRestaurantId());
			jsonArray.put(jsonObject);
		}
		return jsonArray.toString();
  }

  @GetMapping(path="/name")
  public @ResponseBody String getByName(@RequestParam String name) {
	  MenuItem item = service.findByName(name);
	  JSONObject jsonObject = new JSONObject();
	  jsonObject.put("id", item.getId());
	  jsonObject.put("name", item.getName());
	  jsonObject.put("price", item.getPrice());
	  jsonObject.put("restaurant", item.getRestaurantId());
    return jsonObject.toString();
  }
}
