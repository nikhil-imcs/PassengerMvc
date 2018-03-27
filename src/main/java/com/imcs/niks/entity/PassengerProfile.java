package com.imcs.niks.entity;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonIgnoreProperties(ignoreUnknown=true)
public class PassengerProfile {

	private Integer id;
	private String firstName;
	private String lastName;
	private String password;
	private String address;
	private String tel_no;
	private String email_id;
	
	public PassengerProfile(){
		
	}

}
