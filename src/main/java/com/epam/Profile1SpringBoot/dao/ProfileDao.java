package com.epam.Profile1SpringBoot.dao;

import java.util.List;

import com.epam.Profile1SpringBoot.model.Profile;


public interface ProfileDao {
	

	public Profile createProfile(Profile p);
	

	public Profile getProfileById(long id);
	public Profile getProfileByName(String profileName);

	public List<Profile> getAllProf();
	

	public void deleteProf(long id);

	public void updateProf(Profile p);
}
