package com.safetynet.api.model.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;

@Data
@Entity
@Table(name = "persons")
public class Person {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@Column(name = "first_name")
	private String firstName;

	@Column(name = "last_name")
	private String lastName;

	@Column(name = "birth_date")
	private String birthDate;

	@ManyToOne
	@JoinColumn(name = "email_id")
	private Email email;

	@ManyToMany()
	@JoinTable(name = "person_allergie", joinColumns = @JoinColumn(name = "person_id"), inverseJoinColumns = @JoinColumn(name = "allergie_id"))
	Set<Allergie> allergies = new HashSet<Allergie>();

}
