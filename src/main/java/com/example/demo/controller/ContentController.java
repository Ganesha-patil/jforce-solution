package com.example.demo.controller;

import java.util.List;
import java.util.Optional;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.demo.Repository.PollRepo;
import com.example.demo.Repository.PollReportRepo;
import com.example.demo.Repository.UserRepo;
import com.example.demo.model.Login;
import com.example.demo.model.PollReport;
import com.example.demo.model.PollUser;
import com.example.demo.model.Polls;

import jakarta.servlet.http.HttpSession;

@Controller
public class ContentController {

	@Autowired
	PollRepo pollRepo;
	
	@Autowired
	UserRepo userRepo;

	@Autowired
    private PollReportRepo reportRepo;

	
	HashMap<Integer, String> map = new HashMap<>();

	@GetMapping("/home")
	public String home() {

		return "home";
	}

	@GetMapping("/createPoll")
	public String createPoll(@ModelAttribute("polls") Polls poll, Model m) {

		if (poll.getDescripction() != null && !poll.getDescripction().isEmpty()) {
			pollRepo.save(poll);
			System.out.println("poll recived " + poll);
			m.addAttribute("message", "Poll created successfully");
		} else {
			m.addAttribute("message", "something went wrong");
		}
		return "createpoll";
	}

	@GetMapping("/show")
	public String show(Model m) {
		List<Polls> polls = pollRepo.findAll();
		// System.out.println(polls);
		m.addAttribute("polls", polls);
		return "show";
	}

	
	
	@GetMapping("/register")
	public String register(@ModelAttribute("user") PollUser user,Model m)
	{
		System.out.println(user);
		if(user.getEmail() != null && !user.getEmail().isEmpty())
		{
			userRepo.save(user);
			m.addAttribute("msg","user added");
			return "redirect:login";
		}
		return "register";
	}

	@GetMapping("/login")
	public String login(@ModelAttribute("login") Login login, HttpSession session)
	{
		System.out.println("login detais are "+login);
		boolean b = userRepo.existsByEmail(login.getEmail());
		if(b)
		{
			if(login.getEmail() != null && !login.getEmail().isEmpty())
			{
				session.setAttribute("userEmail", login.getEmail());
				user = userRepo.findByEmail(login.getEmail()).orElse(null);
				return "/home";
			}
		}
		return "login";
	}
	PollUser user;
	@GetMapping("/vote")
	public String vote(@RequestParam("pollId") int id,
					   @RequestParam("option") String option) 
	{
		 
	      Polls poll = pollRepo.findById(id).orElse(null);

	        if (user == null || poll == null) {
	            return "User or Poll not found";
	        }

	        PollReport response = new PollReport();
	        response.setUser(user);
	        response.setPoll(poll);
	        response.setOption(option);

	        reportRepo.save(response);

		return "redirect:show";
	}
	
	// to subbmit to create the report next time
	@GetMapping("/report")
	public String reports(Model model, HttpSession session) {

		//next i will create method to userid by session mail
	   // Integer userId = (Integer) session.getAttribute("userId");
		Integer userId = user.getId();
		
	    if (userId.equals(null)) {
	        return "redirect:/login";
	    }

	    List<PollReport> reports = reportRepo.findByUserId(userId);

//	    for (PollReport report : reports) {
//	    	
//	    	report.getPoll().getDescripction();
//	    }
	    model.addAttribute("reports", reports);

	    session.removeAttribute("email");
	    return "report";
	}

	
	

}
