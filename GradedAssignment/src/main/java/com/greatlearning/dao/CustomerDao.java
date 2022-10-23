package com.greatlearning.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import com.greatlearning.model.Customer;

@Component
public class CustomerDao {
	
	@Autowired
	HibernateTemplate hibernateTemplate;
	
	public void addCustomer(Customer cus) {
		hibernateTemplate.save(cus);
	}
	public List<Customer> getAllCus(){
		return hibernateTemplate.loadAll(Customer.class);
	}
	public Customer getCusById(int id){
		return hibernateTemplate.get(Customer.class,id);
	}
	@Transactional
	public void updateCus(Customer cus) {
		hibernateTemplate.update(cus);
	}
	@Transactional
	public void deleteCus(int id) {
		hibernateTemplate.delete(hibernateTemplate.load(Customer.class,id));
	}
	

}
