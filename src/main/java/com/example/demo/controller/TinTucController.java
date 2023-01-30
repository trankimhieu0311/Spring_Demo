package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.example.demo.Services.TinTucService;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "admin")
public class TinTucController {
	
	@Autowired
	private TinTucService tinTucService;

	@GetMapping(value = "/listtintuc")
	public String getListTinTuc(Model model){
		model.addAttribute("listtintuc", tinTucService.getListTinTuc());
		return "/Tintuc/index";
	}

}
