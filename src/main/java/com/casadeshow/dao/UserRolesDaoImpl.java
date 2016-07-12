package com.casadeshow.dao;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Repository;

import com.casadeshow.modelo.UserRoles;

@Repository
@Scope(proxyMode = ScopedProxyMode.INTERFACES)
public class UserRolesDaoImpl implements UserRolesDao {

	@PersistenceContext
	private EntityManager manager;

	public void adiciona(UserRoles role) {
		manager.persist(role);		
	}
	
}
