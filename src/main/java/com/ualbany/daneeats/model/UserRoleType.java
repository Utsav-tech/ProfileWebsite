package com.ualbany.daneeats.model;

public enum UserRoleType {
	CUSTOMER("customer"),
	DELIVERY_AGENT("agent"),
	ADMIN("admin");
	
	private final String name;       

    private UserRoleType(String s) {
        name = s;
    }

    public boolean equalsName(String otherName) {
        return name.equals(otherName);
    }

    public String toString() {
       return this.name;
    }

}
