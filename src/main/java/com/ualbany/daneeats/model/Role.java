package com.ualbany.daneeats.model;

import javax.persistence.*;

@Entity
@Table(name = "UserRoles")
public class Role extends Persistable {

    private User user;

    private UserRoleType roleType;

    @ManyToOne(fetch = FetchType.EAGER)
    @JoinColumn(name = "userId")
	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Enumerated(EnumType.STRING)
	public UserRoleType getRoleType() {
		return roleType;
	}

	public void setRoleType(UserRoleType roleType) {
		this.roleType = roleType;
	}
	
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (!(obj instanceof Role))
			return false;
		boolean equalIds = this.getId() != null && getId().equals(((Role) obj).getId());
		boolean equalusers = this.user.getId() == ((Role) obj).getUser().getId();
		boolean equaltypes = this.roleType == ((Role) obj).getRoleType();
		return equalIds && equalusers && equaltypes;
	}

	@Override
	public int hashCode() {
		int hash = 7;
		hash = 31 * hash + getId().hashCode();
		hash = 31 * hash + user.hashCode();
		hash = 31 * hash + roleType.hashCode();
		return hash;
	}
	
	@Override
	public String toString() {
		return "User:"+ user.getUsername() +" Role:"+ roleType.toString();
	}
}
