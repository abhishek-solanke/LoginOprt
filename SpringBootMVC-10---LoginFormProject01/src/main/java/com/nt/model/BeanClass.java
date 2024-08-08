package com.nt.model;

import org.springframework.stereotype.Component;
import lombok.Data;

@Component
@Data	
public class BeanClass 
{
		private Integer sno;
		private String name;
		private String username;
		private String pwd;
}

