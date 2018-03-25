package com.springmvc.banking.dao;

import org.springframework.dao.EmptyResultDataAccessException;

public interface LoginDAO {
	public boolean login(String userName, String password) throws EmptyResultDataAccessException;
}
