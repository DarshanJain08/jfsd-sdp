package com.klef.jfsd.springboot.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Contactus;
import com.klef.jfsd.springboot.repository.ContactRepository;

@Service
public class ContactServiceImpl implements ContactService
{
	@Autowired
	private ContactRepository contactRepository;

	@Override
	public String insert(Contactus c) {
		contactRepository.save(c);
		return "We will get back to you Shortly";
	}
	
	

}
