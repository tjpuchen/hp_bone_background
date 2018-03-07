package com.hp.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.hp.entity.Emp;
import com.hp.service.EmpService;

@Controller
@RequestMapping("/emp")
public class EmpController {

	@Autowired
	private EmpService empService;

	@RequestMapping(value = "/list", method = RequestMethod.GET)
	private String list(Model model) {
		List<Emp> list = empService.selectEmp();
		model.addAttribute("list", list);
		// list.jsp + model = ModelAndView
		System.out.println("shaid");
		return "list";// WEB-INF/jsp/"list".jsp
		
	}

}
