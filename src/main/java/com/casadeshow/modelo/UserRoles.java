package com.casadeshow.modelo;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.Parameter;

@Entity
@Table(name = "user_roles")
public class UserRoles{

	@Column(nullable = false)
	private String role;
	@OneToOne(mappedBy = "userRoles")
	@PrimaryKeyJoinColumn
	private Users users;
	@Id
	@GeneratedValue(generator = "customForeignGenerator")
	@org.hibernate.annotations.GenericGenerator(name = "customForeignGenerator", strategy = "foreign", parameters = @Parameter(name = "property", value = "users"))
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}

	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	public Users getUsers() {
		return users;
	}
	public void setUsers(Users users) {
		this.users = users;
	}

	
}
