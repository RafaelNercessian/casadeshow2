package com.casadeshow.dao;

import java.util.List;

import com.casadeshow.modelo.Users;

public interface UsersDao {
	void adiciona(Users user);
	List<Users> listaDeUsernames();
}
