package com.springmvc.banking.dao;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.EmptyResultDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.springmvc.banking.model.Login;




@Repository
public class LoginDAOImpl implements LoginDAO {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginDAOImpl.class);
	
	@Autowired
	JdbcTemplate jdbcTemplate;
	
	@Override
	public boolean login(String userName, String password) throws EmptyResultDataAccessException {
		logger.info("login()");
		String query = "select * from public.\"login\" where user_name = '" + userName + "' and password = '" + password + "'";
		logger.info(query);
		try {
			Login login = jdbcTemplate.queryForObject(query, new BeanPropertyRowMapper<Login>(Login.class));
			if(login!=null){
				return true;
			}
		} catch (Exception e) {
			throw new EmptyResultDataAccessException("User Name does not exist", 1, e.getCause());
		}
		return false;
	}

}
