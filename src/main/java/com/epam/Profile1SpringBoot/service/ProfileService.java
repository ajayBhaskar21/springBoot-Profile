package com.epam.Profile1SpringBoot.service;

import java.util.List;

import com.epam.Profile1SpringBoot.dao.ProfileDaoImpl;
import org.springframework.beans.factory.annotation.Autowired;

import com.epam.Profile1SpringBoot.model.Profile;
import org.springframework.stereotype.Service;

@Service
public class ProfileService {
	@Autowired
	ProfileDaoImpl profileDaoImpl;


	public Profile createProfile(Profile profile) {
		// TODO Auto-generated method stub
		Profile tempProfile = profileDaoImpl.createProfile(profile);
		return tempProfile;
	}
	
	public Profile getProfileById(long id) {
		// TODO Auto-generated method stub
		Profile tempProfile = profileDaoImpl.getProfileById(id);
		return tempProfile;
	}
	public Profile getProfileByName(String profileName) {
		Profile tempProfile = profileDaoImpl.getProfileByName(profileName);
		return tempProfile;
	}
	

	public List<Profile> getAllProfiles() {
		// TODO Auto-generated method stub
		List<Profile> profiles = profileDaoImpl.getAllProf();
		return profiles;
	}


	public void deleteProfile(long id) {
		profileDaoImpl.deleteProf(id);
	}
	

	public void updateProfile(Profile p) {
		profileDaoImpl.updateProf(p);

	}
}