package com.ualbany.daneeats.model;

import javax.persistence.*;

@Entity
public class Profile  extends Persistable {
 
	private User user;
	
    private String firstname;

    private String lastname;

    private String phone;

    private String address1;

    private String address2;

    private String image;
 
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "userId")
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
    
    public String getFirstName(){
        return firstname;
    }

    public void setFirstName(String firstname){
        this.firstname = firstname;
    }

    public String getLastName(){
        return lastname;
    }

    public void setLastName(String lastname){
        this.lastname = lastname;
    }

    public String getPhone(){
        return phone;
    }

    public void setPhone(String phone){
        this.phone = phone;
    }

    public String getAddress1(){
        return address1;
    }

    public void setAddress1(String address1){
        this.address1 = address1;
    }

    public String getAddress2(){
        return address2;
    }

    public void setAddress2(String address2){
        this.address2 = address2;
    }

    public String getImage(){
        return image;
    }

    public void setImage(String image){
        this.image = image;
    }
}
