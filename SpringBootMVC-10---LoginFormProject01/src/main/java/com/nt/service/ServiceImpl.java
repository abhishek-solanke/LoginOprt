package com.nt.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.model.loginModel;
import com.nt.repository.IRepository;

@Service
public class ServiceImpl implements IService 
{
	@Autowired
	private IRepository iRepo;

	@Override
	public loginModel insertData(loginModel logMod) 
	{
		loginModel obj = iRepo.save(logMod);
		return logMod;
	}
	
	@Override
	public Iterable<loginModel> fetchAllData() 
	{
		Iterable<loginModel> it = iRepo.findAll();
		return it;
	}
	
	@Override
	public loginModel findDataById(Integer num) 
	{
		Optional<loginModel> opt = iRepo.findById(num);
		if(opt.isPresent())
		{
			loginModel lm = opt.get();
			//return "Welcome "+lm.getName();
			return lm;
		}
		else
		{
			throw new NullPointerException();
		}
	}
	
	
	
}
