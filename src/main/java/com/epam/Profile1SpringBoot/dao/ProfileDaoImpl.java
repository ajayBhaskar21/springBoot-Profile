package com.epam.Profile1SpringBoot.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.springframework.stereotype.Component;
import com.epam.Profile1SpringBoot.model.Profile;

@Component
public class ProfileDaoImpl implements ProfileDao {
	EntityManagerFactory eManagerFactory = Persistence.createEntityManagerFactory("my-local-mysql");
	EntityManager entityManager = eManagerFactory.createEntityManager();


	@Override
	public Profile createProfile(Profile p) {
		transactionCommit(entityManager, p);
		return p;
	}
	

	@Override
	public Profile getProfileById(long id) {
		Profile profile = entityManager.find(Profile.class, id);
		return profile;
	}
	@Override 
	public Profile getProfileByName(String profileName) {
		Profile profile = entityManager.find(Profile.class, profileName);
		return profile;
	}
	

	
	@Override
	public List<Profile> getAllProf() {
		List<Profile> list = entityManager.createQuery("select p from Profile p").getResultList();
		return list;
	}


	@Override
	public void deleteProf(long id) {
		Profile profile = entityManager.find(Profile.class, id);
		entityManager.getTransaction().begin();
		entityManager.remove(profile);
		entityManager.getTransaction().commit();
	}
	

	@Override
	public void updateProf(Profile p) {
		entityManager.getTransaction().begin();
		entityManager.merge(p);
		entityManager.getTransaction().commit();
	}

	private static void transactionCommit(EntityManager entityManager, Object object) {
		entityManager.getTransaction().begin();
		entityManager.persist(object);
		entityManager.getTransaction().commit();
	}
}