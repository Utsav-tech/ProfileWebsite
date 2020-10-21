package com.ualbany.daneeats.model;

public enum OrderStatus {

    NEW("new"),

    CLAIMED_BY_AGENT("claimed"),

    ACCEPTED_BY_AGENT("accepted"),

    PICKED_UP("pickedup"),

    DELIVERED_BY_AGENT("delivered"),

    DELIVERY_CONFIRMED("completed"),

    CANCELLED("cancelled");
	
	private final String name;       

    private OrderStatus(String s) {
        name = s;
    }

    public boolean equalsName(String otherName) {
        return name.equals(otherName);
    }

    public String toString() {
       return this.name;
    }
}
