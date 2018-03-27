package com.imcs.niks.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.client.RestTemplate;

import com.imcs.niks.entity.PassengerProfile;



@Controller
public class PassengerController {
	
	private static String URL="http://192.168.1.67/PassengerREST/passengers";
	
	
	@GetMapping(path="/")
	public String getHome(){
		return "index";
	}
	
	
	@GetMapping(path="/passengers")
	public String getAllPassengers(Model model){
		RestTemplate restTemplate=new RestTemplate();
		PassengerProfile[] passengers=(PassengerProfile[]) restTemplate.getForObject(URL,PassengerProfile[].class);
		List<PassengerProfile> passengerList=Arrays.asList(passengers);
		model.addAttribute("passengerList", passengerList);
		return "passengers";
		
	}
	
	@GetMapping(path="/passengers/{id}")
	public String getPassengerById(@PathVariable("id") Integer id,Model model){
		RestTemplate restTemplate=new RestTemplate();
		Map<String, Integer> uriVariables=new HashMap<>();
		uriVariables.put("id", id);
		PassengerProfile passenger=restTemplate.getForObject(URL+"/{id}", PassengerProfile.class, uriVariables);
		model.addAttribute("passenger", passenger);
		return "passengerDetails";
		
	}
	
	@GetMapping(path="/passengers/new")
	public String getPassengerForm(Model model){
		PassengerProfile passenger=new PassengerProfile();
		model.addAttribute("passenger", passenger);
		return "passengerForm";
	}
	
	@PostMapping(path="/passengers/new")
	public String addPassenger(@ModelAttribute("passenger") PassengerProfile passenger){
		RestTemplate restTemplate=new RestTemplate();
		restTemplate.postForObject(URL,passenger,PassengerProfile.class);
		return "redirect:/passengers";
	}
	
	

}
