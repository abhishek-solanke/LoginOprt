package com.nt.repository;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Component;

import com.nt.model.loginModel;

@Component
public interface IRepository extends CrudRepository<loginModel,Integer> 
{

}
