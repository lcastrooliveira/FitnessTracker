package com.pluralsight.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

//Lucas

@Entity
@Table(name = "authorities")
public class Authority 
{
	
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;
	
	@Column(name="authority")
	private String authority;
	
	@ManyToOne
	@JoinColumn(name="username")
	private User user;
	
	public Authority() {}

	public Long getUsername() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAuthority() {
		return authority;
	}

	public void setAuthority(String authority) {
		this.authority = authority;
	}
}