package com.helloworld.HelloWorld2.Controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/helloworld")
public class HelloWorldController {
	
	@GetMapping
	public String helloWorld() {
		return "Criação de aplicações com Spring Boot";
	}
}
