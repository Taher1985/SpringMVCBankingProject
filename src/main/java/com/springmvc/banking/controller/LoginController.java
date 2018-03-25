package com.springmvc.banking.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.springmvc.banking.service.LoginService;

@Controller
public class LoginController {

	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	@Autowired
	LoginService loginService;
	
	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public String loginPage() {
		logger.info("loginPage Method");
		return "login";
	}
	
	@RequestMapping(value = "/loginUser", method = RequestMethod.GET)
	public ModelAndView loginUser(@RequestParam(value="userName") String username, @RequestParam String password) {
		logger.info("loginUser Method");
		ModelAndView model = new ModelAndView();
		boolean login = loginService.login(username, password);
		model.setViewName("accountOperations");
		model.addObject("message", "Welcome " + username);
		model.addObject("username", username);
		return model;
	}
	
}
