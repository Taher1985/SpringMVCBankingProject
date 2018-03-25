package com.springmvc.banking.service;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.springmvc.banking.dao.LoginDAO;


@Service
public class LoginServiceImpl implements LoginService {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginServiceImpl.class);

	@Autowired
	LoginDAO loginDAO;
	
	@Override
	public boolean login(String userName, String password) {
		logger.info("login()");
		boolean login = loginDAO.login(userName, password);
		return login;
	}

}
