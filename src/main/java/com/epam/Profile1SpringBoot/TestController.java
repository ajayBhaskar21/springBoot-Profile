package com.epam.Profile1SpringBoot;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController 
{	

	
	@RequestMapping("/")
	public String Load() {
		return "view";
	}
	

	@RequestMapping("addProfile")
	public String addProfileDetails() {
		return "addProfile";
	}
	

	@RequestMapping("AllProfileDetails")
	public String AllProfileDetails() {
		return "AllProfileDetails";
	}
	

	@RequestMapping("ProfileInformation")
	public String ProfileInformation() {
		return "ProfileInformation";
	}
	

	@RequestMapping("DeleteProfile")
	public String DeleteProfile() {
		return "DeleteProfile";
	}
	

	
	@RequestMapping("UpdateProfile")
	public String UpdateProfile() {
		return "UpdateProfile";
	}
	
	
}