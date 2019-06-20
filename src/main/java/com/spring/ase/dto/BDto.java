package com.spring.ase.dto;

public class BDto {

	String Id;
	String Pw;
	String Name;
	String Phone;
	
	public BDto(String Id, String Pw, String Name, String Phone) {
		this.Id = Id;
		this.Pw = Pw;
		this.Name = Name;
		this.Phone = Phone;
	}

	public String getId() {
		return Id;
	}

	public void setId(String id) {
		Id = id;
	}

	public String getPw() {
		return Pw;
	}

	public void setPw(String pw) {
		Pw = pw;
	}

	public String getName() {
		return Name;
	}

	public void setName(String name) {
		Name = name;
	}

	public String getPhone() {
		return Phone;
	}

	public void setPhone(String phone) {
		Phone = phone;
	}	
	
	
	
}
