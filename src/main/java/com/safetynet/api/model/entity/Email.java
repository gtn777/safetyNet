package com.safetynet.api.model.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "emails")
public class Email {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "email")
	private String emailString;

	@OneToMany(mappedBy = "email")
	private Set<Person> persons = new HashSet<Person>();
	
}
//SELECT first_name, last_name, email FROM persons INNER JOIN emails WHERE persons.email_id = emails.id;
