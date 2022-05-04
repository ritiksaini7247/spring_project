package com.example.demo.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "person_tbl_spring")
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	@Column(name = "person_id")
	private Integer personId;
	@Column(name = "person_name")
	private String personName;
	@Column(name = "person_email")
	private String personEmail;
	@Column(name = "person_password")
	private String personPassword;
	@Column(name = "person_user_name")
	private String personUserName;

	public Person() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Person(Integer personId, String personName, String personEmail, String personPassword,
			String personUserName) {
		super();
		this.personId = personId;
		this.personName = personName;
		this.personEmail = personEmail;
		this.personPassword = personPassword;
		this.personUserName = personUserName;
	}

	public Integer getPersonId() {
		return personId;
	}

	public void setPersonId(Integer personId) {
		this.personId = personId;
	}

	public String getPersonName() {
		return personName;
	}

	public void setPersonName(String personName) {
		this.personName = personName;
	}

	public String getPersonEmail() {
		return personEmail;
	}

	public void setPersonEmail(String personEmail) {
		this.personEmail = personEmail;
	}

	public String getPersonPassword() {
		return personPassword;
	}

	public void setPersonPassword(String personPassword) {
		this.personPassword = personPassword;
	}

	public String getPersonUserName() {
		return personUserName;
	}

	public void setPersonUserName(String personUserName) {
		this.personUserName = personUserName;
	}

	@Override
	public String toString() {
		return "Person [personId=" + personId + ", personName=" + personName + ", personEmail=" + personEmail
				+ ", personPassword=" + personPassword + ", personUserName=" + personUserName + "]";
	}

}
