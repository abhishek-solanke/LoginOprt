package com.nt.Model_Entity;

import org.springframework.stereotype.Component;

import io.micrometer.common.lang.NonNull;
import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.RequiredArgsConstructor;

@Component
@Data
@Entity
@RequiredArgsConstructor
@AllArgsConstructor
@Table(name="EMP")
public class myEntity 
{
	@Id
	@SequenceGenerator(name="gen1",sequenceName="EMP_ID_SEQ",initialValue=1,allocationSize=2 )
	@GeneratedValue(generator="gen1",strategy=GenerationType.SEQUENCE)
	private Integer empno;
	
	@Column(length=40)
	@NonNull
	private String ename;
	
	@Column(length=20)
	@NonNull
	private String job;
	
	@Column
	@NonNull
	private Double sal;
	
	
}
