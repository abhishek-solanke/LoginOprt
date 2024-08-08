package com.nt.model;

import org.springframework.stereotype.Component;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Data;

@Component
@Data
@Entity
@Table(name="LoginForm")
public class loginModel 
{
	@Id
	private Integer sno;
	@Column
	private String name;
	@Column
	private String username;
	@Column
	private String pwd;
	
	
}
