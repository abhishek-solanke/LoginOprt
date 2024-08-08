package com.nt.Repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Component;

import com.nt.Model_Entity.myEntity;

@Component
public interface IRepository extends JpaRepository<myEntity,Integer> 
{
	
}
