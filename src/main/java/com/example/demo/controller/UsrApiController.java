package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UsrApiController {
	
	@RequestMapping("/usr/api/APITest")
	public String APITest() {
		return "usr/api/APITest";
	}
}