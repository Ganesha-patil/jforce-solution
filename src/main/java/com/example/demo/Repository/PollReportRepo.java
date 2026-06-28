package com.example.demo.Repository;

import java.util.List;


import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.model.PollReport;

public interface PollReportRepo extends JpaRepository<PollReport, Integer>{

	List<PollReport> findByUserId(int userId);
    List<PollReport> findByPollId(int pollId);
}
