package com.ust1.spring.springcore;

import org.springframework.context.support.ClassPathXmlApplicationContext;

public class test {

	public static void main(String[] args) {

		ClassPathXmlApplicationContext cp=new ClassPathXmlApplicationContext("config.xml");
		Employee e = (Employee) cp.getBean("emp");
		System.out.println("Employee Id : " +e.getId());
		System.out.println("Employee Name : "+e.getName());
		
	}

}


