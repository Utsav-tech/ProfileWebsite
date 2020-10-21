package com.ualbany.daneeats.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
public class MenuItem extends Persistable {

	private String name;

	private Double price;

	private Integer calories;

	private String description;

	private Restaurant restaurant;

	private String image;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Double getPrice() {
		return price;
	}

	public void setPrice(Double price) {
		this.price = price;
	}

	public Integer getCalories() {
		return calories;
	}

	public void setCalories(Integer calories) {
		this.calories = calories;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "restaurantId")
	public Restaurant getRestaurant() {
		return restaurant;
	}

	public void setRestaurant(Restaurant restaurant) {
		this.restaurant = restaurant;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof MenuItem))
			return false;
		boolean equalIds = this.getId() != null && getId().equals(((MenuItem) obj).getId());
		boolean equalname = this.name.equals(((MenuItem) obj).getName());
		boolean equalprice = this.price == ((MenuItem) obj).getPrice();
		boolean equalcalories = this.calories == ((MenuItem) obj).getCalories();
		boolean equalrestaurants = this.restaurant.getId() == ((MenuItem) obj).getRestaurant().getId();
		return equalIds && equalname && equalprice && equalcalories && equalrestaurants;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 31 * hash + getId().hashCode();
		hash = 31 * hash + restaurant.hashCode();
		hash = 31 * hash + price.intValue();
		hash = 31 * hash + name.hashCode();
		hash = 31 * hash + calories;
		return hash;
	}

	@Override
	public String toString() {
		return "Restaurant:" + restaurant + " Name:" + name + " Price:" + price + " Calories:" + calories
				+ " Description:" + description;
	}
}
