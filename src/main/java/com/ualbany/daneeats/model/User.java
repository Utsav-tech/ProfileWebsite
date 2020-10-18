package com.ualbany.daneeats.model;
import javax.persistence.*;



import java.util.Set;

@Entity
@Table(name = "Usersindb")
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;
    
    @OneToMany(mappedBy ="user")
    private Set<Order> order;

    private String username;
    
    private String password;
    
    
	private String email;
	
	private Boolean isActive;
	
	@OneToOne(mappedBy = "user", cascade = CascadeType.ALL)
    private VerificationToken verificationToken;
	
    public Boolean getIsActive() {
		return isActive;
	}

	public void setIsActive(Boolean isActive) {
		this.isActive = isActive;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}



    @Transient//this field will not be saved in the database.
    private String passwordConfirm;

    @ManyToMany
    private Set<Role> roles;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
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

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }
    public VerificationToken getVerificationToken() {
        return verificationToken;
    }

    public void setVerificationToken(VerificationToken verificationToken) {
        this.verificationToken = verificationToken;
    }
}
