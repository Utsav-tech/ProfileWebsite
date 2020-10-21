package com.ualbany.daneeats.model;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "OrderItems")
public class OrderItem extends Persistable {

	private Order order;

	private MenuItem item;

	private Integer quantity;

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "orderId")
	public Order getOrder() {
		return order;
	}

	public void setOrder(Order order) {
		this.order = order;
	}

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "menuId")
	public MenuItem getMenuItem() {
		return item;
	}

	public void setMenuItem(MenuItem Item) {
		this.item = Item;
	}

	public Integer getQuantity() {
		return quantity;
	}

	public void setQuantity(Integer quantity) {
		this.quantity = quantity;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof OrderItem))
			return false;
		boolean equalIds = this.getId() != null && getId().equals(((OrderItem) obj).getId());
		boolean equalquantity = this.quantity == ((OrderItem) obj).getQuantity();
		boolean equalorders = this.order.getId() == ((OrderItem) obj).getOrder().getId();
		boolean equalmenuitems = this.item.getId() == ((OrderItem) obj).getMenuItem().getId();
		return equalIds && equalquantity && equalorders && equalmenuitems;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 31 * hash + getId().hashCode();
		hash = 31 * hash + order.hashCode();
		hash = 31 * hash + item.hashCode();
		hash = 31 * hash + quantity.hashCode();
		return hash;
	}
	
	@Override
	public String toString() {
		return "OrderId:"+ order.getId()+" MenuItem:"+ item.getName()+" Quantity:"+ quantity;
	}
}
