package com.cat;

public class Cat {
	  
	int Id;
	String Name;
	int Age;
	String Sex;
	String Jieyu;
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public int getAge() {
		return Age;
	}
	public void setAge(int age) {
		Age = age;
	}
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	public String getJieyu() {
		return Jieyu;
	}
	public void setJieyu(String jieyu) {
		Jieyu = jieyu;
	}
	@Override
	public String toString() {
		return "Cat [Id=" + Id + ", Name=" + Name + ", Age=" + Age + ", Sex=" + Sex + ", Jieyu=" + Jieyu + "]";
	}
}