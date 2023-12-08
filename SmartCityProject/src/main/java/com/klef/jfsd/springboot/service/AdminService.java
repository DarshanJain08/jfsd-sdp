package com.klef.jfsd.springboot.service;

import java.util.List;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Customer;

public interface AdminService 
{

public List<Customer> viewallcustomers();
public Customer viewcustomerbyid(int cid);
public String deletecustomer(int cid);
public Admin checkadminlogin(String uname,String pwd);

public long customercount();//count(*)
public int updatestatus(int cid,boolean status);

}