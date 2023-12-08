package com.klef.jfsd.springboot.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.repository.AdminRepository;
import com.klef.jfsd.springboot.repository.CustomerRepository;


@Service
public class AdminServiceImpl implements AdminService {

  @Autowired
  private AdminRepository adminRepository;
  
  
  @Autowired
  private CustomerRepository customerRepository;
  
  @Override
  public List<Customer> viewallcustomers() {
 
    return customerRepository.findAll();
  }

  @Override
  public Customer viewcustomerbyid(int cid) 
  {
    Optional<Customer> obj =  customerRepository.findById(cid);
        
        if(obj.isPresent())
        {
          Customer c = obj.get();
          
          return c;
        }
        else
        {
          return null;
        }
  }

  @Override
  public String deletecustomer(int cid) {
    Optional<Customer> obj =  customerRepository.findById(cid);
         
         String msg = null;
         
         if(obj.isPresent())
         {
           Customer c = obj.get();
           
           customerRepository.delete(c);
           
           msg = "Customer Deleted Successfully";
         }
         else
         {
           msg = "Customer Not Found";
         }
         
         return msg;
  }

  @Override
  public Admin checkadminlogin(String uname, String pwd) {
    // TODO Auto-generated method stub
    return adminRepository.checkadminlogin(uname, pwd);
  }

  //Employee active status update
  @Override
  public int updatestatus(int cid, boolean status) 
  {
    
    return adminRepository.updatestatus(cid, status);

  }
  @Override
  public long customercount() {
    
    return customerRepository.count();
  }

}