package org.cunframework.web.ipro.demo.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * ipro下所有可用的UI演示
 * @author weiq
 *
 */
@Controller
public class DemoController {
	@RequestMapping(value = "/demo/{page}")
	public String demo(@PathVariable("page") String page) {
		return "demo/"+page;
	}
	
	@RequestMapping(value = "/demo/ajax/{page}")
	public String ajax(@PathVariable("page") String page){
		return "demo/ajax/"+page;
	}
}
