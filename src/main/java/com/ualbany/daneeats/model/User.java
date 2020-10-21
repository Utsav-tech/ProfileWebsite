package com.ualbany.daneeats.model;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.persistence.UniqueConstraint;

@Entity(name = "User")
@Table(uniqueConstraints = { @UniqueConstraint(columnNames = {"email", "userName"}) })
public class User extends Persistable {

	private String userName;
	private String email;
	private String password;
    private VerificationToken verificationToken;
    private Boolean isActive;
	
    @Transient//this field will not be saved in the database.
    private String passwordConfirm;

    private List<Role> roles = new ArrayList<Role>();

    @Column(nullable = false)
	public String getUserName() {
		return this.userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
	}

	@Column(name = "email", unique = true, nullable = false)
	public String getEmail() {
		return this.email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	@Column(name = "password")
	public String getPassword() {
		return this.password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

    public String getPasswordConfirm() {
        return passwordConfirm;
    }

    public void setPasswordConfirm(String passwordConfirm) {
        this.passwordConfirm = passwordConfirm;
    }

    @OneToMany(cascade=CascadeType.ALL)
    @JoinColumn(name="userId")
    public List<Role> getRoles() {
        return roles;
    }

    public void setRoles(List<Role> roles) {
    	for (Role role : roles) {
			role.setUser(this);
			this.roles.add(role);
		}
    }
    
    public void addRole(Role role) {
    	role.setUser(this);
    	this.roles.add(role);
    }
    
    public void removeRole(Role role) {
    	this.roles.remove(role);
    	role.setUser(null);
    }
    
	@OneToOne(cascade = CascadeType.ALL)
	@JoinColumn(name="userId")
    public VerificationToken getVerificationToken() {
        return verificationToken;
    }

    public void setVerificationToken(VerificationToken verificationToken) {
        this.verificationToken = verificationToken;
    }

	public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}
}
