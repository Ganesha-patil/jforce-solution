package com.example.demo.Repository;

import java.util.Optional;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.PollUser;


public interface UserRepo extends JpaRepository<PollUser, Integer>{

	public boolean existsByEmail(String email);

	public Optional<PollUser> findByEmail(String email);
}
