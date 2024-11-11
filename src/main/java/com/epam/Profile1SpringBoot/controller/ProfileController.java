package com.epam.Profile1SpringBoot.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

import com.epam.Profile1SpringBoot.service.ProfileService;
import com.epam.Profile1SpringBoot.model.Profile;

@Controller
public class ProfileController {
	@Autowired
	ProfileService profileService;
	
	@GetMapping("view")
	public String view() {
		return "view";
	}
	

	@GetMapping("addProfileInfo")
	public ModelAndView addProfileInfo(Profile profile) {
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("viewinsertprofile");
		modelAndView.addObject("profile", profileService.createProfile(profile));
		return modelAndView;
	}


	@GetMapping("allprofiledetails")
	public ModelAndView allprofiledetails() {
		List<Profile> list = profileService.getAllProfiles();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AllProfileDetails");
		modelAndView.addObject("profiles", list);
		return modelAndView;
	}
	


	@GetMapping("profileinformation")
	public ModelAndView profileinformation(long id) {
		Profile profile = profileService.getProfileById(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("profileinfodisplay");
		modelAndView.addObject("profile", profile);
		return modelAndView;
	}
	
	

	
	@GetMapping("DeleteProfileDetails")
	public ModelAndView DeleteProfileDetails(long id) {
		Profile profile = profileService.getProfileById(id);
		profileService.deleteProfile(id);
		List<Profile> list = profileService.getAllProfiles();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AllProfileDetails");
		modelAndView.addObject("profiles", list);
		return modelAndView;
	}
	

	@GetMapping("UpdateProfileDetails")
	public ModelAndView UpdateProfileDetails(long id) {
		Profile profile = profileService.getProfileById(id);
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("editprofiledetails");
		modelAndView.addObject("profile", profile);
		return modelAndView;
	}
	

	@GetMapping("updateProfileInfo")
	public ModelAndView updateProfileInfo(Profile profile) {
		profileService.updateProfile(profile);
		List<Profile> list = profileService.getAllProfiles();
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("AllProfileDetails");
		modelAndView.addObject("profiles", list);
		return modelAndView;
	}
	

}