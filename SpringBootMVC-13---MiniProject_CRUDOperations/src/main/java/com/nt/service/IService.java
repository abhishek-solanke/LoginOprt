package com.nt.service;

import org.springframework.stereotype.Component;

import com.nt.Model_Entity.myEntity;

@Component
public interface IService 
{
	public Iterable<myEntity> getAllData();
	public myEntity registerEmp(myEntity me);
	public myEntity editEmpData(Integer num);
	public String deleteEmpData(Integer num);
}
