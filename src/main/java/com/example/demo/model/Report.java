package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;



@Entity
public class Report {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String description;
	private String selctedOption;
	
	@ManyToOne
    @JoinColumn(name = "user_id")
    private PollUser user;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSelctedOption() {
		return selctedOption;
	}

	public void setSelctedOption(String selctedOption) {
		this.selctedOption = selctedOption;
	}

	public PollUser getUser() {
		return user;
	}

	public void setUser(PollUser user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Report [id=" + id + ", description=" + description + ", selctedOption=" + selctedOption + ", user="
				+ user + "]";
	}
	
	
	
	
	
}
