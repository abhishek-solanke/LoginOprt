package com.nt.service;

import java.util.Optional;

import org.springframework.stereotype.Component;

import com.nt.model.loginModel;

@Component
public interface IService 
{
	
	public loginModel insertData(loginModel log);
	public Iterable<loginModel> fetchAllData();
	public loginModel findDataById(Integer num);
	
}
