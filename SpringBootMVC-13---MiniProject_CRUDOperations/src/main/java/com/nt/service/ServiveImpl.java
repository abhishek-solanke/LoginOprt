package com.nt.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.nt.Model_Entity.myEntity;
import com.nt.Repository.IRepository;

@Service
public class ServiveImpl implements IService
{
	@Autowired
	private IRepository iRepo;
	
	@Override
	public Iterable<myEntity> getAllData() 
	{
		Iterable<myEntity> it = iRepo.findAll();
		return it;
	}

	@Override
	public myEntity registerEmp(myEntity me)
	{
		myEntity obj = iRepo.save(me);
		return obj;
	}
	
	@Override
	public myEntity editEmpData(Integer num) 
	{
		Optional<myEntity> opt = iRepo.findById(num);
		if(opt.isPresent())
		{
			 myEntity foundedObj = opt.get();
			 return foundedObj;
		}
		else
		{
			throw new NullPointerException("No Record Found");
		}
		
	}
	
	@Override
	public String deleteEmpData(Integer num) 
	{
		Optional<myEntity> opt = iRepo.findById(num);
		if(opt.isPresent())
		{
			iRepo.deleteById(num);
			return opt.get().getEmpno()+" No. record DELETED Successfully";
		}
		else
		{
			throw new IllegalStateException();
		}
		
	}
	
	
}
