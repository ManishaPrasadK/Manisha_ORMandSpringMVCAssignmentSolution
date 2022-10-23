package com.greatlearning.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import com.greatlearning.dao.CustomerDao;
import com.greatlearning.model.Customer;

@Component
@Service
public class CustomerService {
	
	@Autowired
	CustomerDao customerDao;
	
	//add customer
		public void addCus(Customer cus) {
			
			customerDao.addCustomer(cus);
		}
		
		//get all customers
		 public List<Customer> getAllCustomer(){
			 return customerDao.getAllCus();
		 }
		 
		 //get customer by id
		 public Customer getById(int id) {
			 
			 return customerDao.getCusById(id);
			 
		 }
		 
		 //update customer
		 public void updateCustomer(Customer cus) {
			 customerDao.updateCus(cus);
		 }
		 
		 public void deleteCustomer(int id) {
			  customerDao.deleteCus(id);
			 
		 }

}
