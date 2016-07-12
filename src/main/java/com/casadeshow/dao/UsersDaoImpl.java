package com.casadeshow.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.casadeshow.modelo.Users;

@Repository
@Scope(proxyMode = ScopedProxyMode.INTERFACES)
public class UsersDaoImpl implements UsersDao {

	@PersistenceContext
	private EntityManager manager;
	
	public void adiciona(Users user) {
		manager.persist(user);
	}

	
}
