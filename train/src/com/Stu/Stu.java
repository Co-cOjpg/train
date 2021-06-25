package com.Stu;

public class Stu {
	int ID;
	String NO;
	String Name;
	String Sex;
	String Birth;
	String Email;
	String Tel;
	public int getID() {
		return ID;
	}
	public void setID(int iD) {
		ID = iD;
	}
	public String getNO() {
		return NO;
	}
	public void setNO(String nO) {
		NO = nO;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getSex() {
		return Sex;
	}
	public void setSex(String sex) {
		Sex = sex;
	}
	public String getBirth() {
		return Birth;
	}
	public void setBirth(String birth) {
		Birth = birth;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
	}
	public String getTel() {
		return Tel;
	}
	public void setTel(String tel) {
		Tel = tel;
	}
	@Override
	public String toString() {
		return "Stu [ID=" + ID + ", NO=" + NO + ", Name=" + Name + ", Sex=" + Sex + ", Birth=" + Birth + ", Email="
				+ Email + ", Tel=" + Tel + "]";
	}
}
