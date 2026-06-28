package com.example.demo.Repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.Polls;

public interface PollRepo extends JpaRepository<Polls, Integer>{

	
}
