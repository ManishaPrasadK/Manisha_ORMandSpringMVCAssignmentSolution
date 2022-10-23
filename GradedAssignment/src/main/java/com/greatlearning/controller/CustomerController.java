package com.greatlearning.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.greatlearning.model.Customer;
import com.greatlearning.service.CustomerService;

@Controller
@RequestMapping
public class CustomerController {
	
	@Autowired
	CustomerService customerService;
	
	@GetMapping("addCustomer")
	public String addCus() {
		return "AddCustomer";
	}
	
	@PostMapping("insertCustomer")
	public String insertCustomer(@ModelAttribute("insertCustomer") Customer cus) {
		customerService.addCus(cus);
		return "redirect:/customerReport";
	}
	
	@GetMapping("customerReport")
	public String loadCustomer(Model m) {
		m.addAttribute("customer", customerService.getAllCustomer());
		m.addAttribute("title", "Customer Report");
		return "CustomerReport";
	}
	
	@GetMapping("/editCustomer/{id}")
	public String loadEditForm(@PathVariable(value="id")int id,Model m) {
		
		Customer cus = customerService.getById(id);
		m.addAttribute("customer", cus);
		m.addAttribute("title", "Edit Customer");
		return "EditCustomer";
		
	}
	
	@PostMapping("/editCustomer/updateCustomer")	
	public String updateCus(@ModelAttribute("updateCustomer")Customer cus) {
		customerService.updateCustomer(cus);
		
		return "redirect:/customerReport";
	}
	
	@GetMapping("/deleteCustomer/{id}")
	public String deleteCus(@PathVariable int id)
	{
		customerService.deleteCustomer(id);
		
		return "redirect:/customerReport";
	}

}
