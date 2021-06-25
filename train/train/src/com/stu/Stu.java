package com.zjw;

public class Stu {
	int id;
	String Name;
	String Hobby;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getHobby() {
		return Hobby;
	}
	public void setHobby(String hobby) {
		Hobby = hobby;
	}
	@Override
	public String toString() {
		return "Stu [id=" + id + ", Name=" + Name + ", Hobby=" + Hobby + "]";
	}

}
