package com.fruitstore.hibernate;


public class Test {
public static void main(String[] args) {
	User u=new User();
	u.setUsername("keshav");
	u.setPassword("redaht");
	u.setEmail("me@me.com");
	u.setAddress("74, downstreet");
	System.out.println("data saved successfully");
}
}
