package com.example.demo.model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.ManyToOne;

@Entity
public class PollReport {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	private PollUser user;

	@ManyToOne
	private Polls poll;

	private String selectedOption;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public PollUser getUser() {
		return user;
	}

	public void setUser(PollUser user) {
		this.user = user;
	}

	public Polls getPoll() {
		return poll;
	}

	public void setPoll(Polls poll) {
		this.poll = poll;
	}

	public String getOption() {
		return selectedOption;
	}

	public void setOption(String selectedOption) {
		this.selectedOption = selectedOption;
	}
	
	
	

}
