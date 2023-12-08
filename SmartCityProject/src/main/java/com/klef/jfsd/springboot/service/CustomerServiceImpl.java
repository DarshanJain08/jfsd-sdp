package com.klef.jfsd.springboot.service;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.CustomerRepository;

@Service
public class CustomerServiceImpl implements CustomerService {

	@Autowired
	private CustomerRepository customerRepository;

	@Override
	public String addcustomer(Customer c) {
		customerRepository.save(c);
		return "Successfully Registeres Please Login";
	}

	@Override
	public String updatecustomer(Customer c) {
		Customer e = customerRepository.findById(c.getId()).get();

		e.setName(c.getName());
		e.setUsername(c.getUsername());
		e.setEmail(c.getEmail());
		e.setGender(c.getGender());
		e.setDob(c.getDob());
		e.setPassword(c.getPassword());
		e.setContactno(c.getContactno());
		e.setAddress(c.getAddress());

		// Check if a new profile image is provided

		customerRepository.save(e);

		return "Customer Updated Successfully";
	}

	@Override
	public Customer checkcustomerlogin(String email, String pwd) {
		return customerRepository.checkcustomerlogin(email, pwd);
	}

	@Override
	public Customer viewcustomerbyid(int cid) {
		Optional<Customer> obj = customerRepository.findById(cid);

		if (obj.isPresent()) {
			Customer c = obj.get();

			return c;
		} else {
			return null;
		}
	}

}