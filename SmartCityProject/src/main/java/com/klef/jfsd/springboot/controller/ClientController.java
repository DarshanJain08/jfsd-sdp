package com.klef.jfsd.springboot.controller;

import java.io.IOException;
import java.sql.Blob;
import java.sql.SQLException;
import java.util.List;
import org.springframework.http.MediaType;

import javax.sql.rowset.serial.SerialException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.klef.jfsd.springboot.model.Admin;
import com.klef.jfsd.springboot.model.Contactus;
import com.klef.jfsd.springboot.model.Customer;
import com.klef.jfsd.springboot.model.Hotel;
import com.klef.jfsd.springboot.model.HotelBookings;
import com.klef.jfsd.springboot.model.RentalBookings;
import com.klef.jfsd.springboot.service.AdminService;
import com.klef.jfsd.springboot.service.ContactService;
import com.klef.jfsd.springboot.service.CustomerService;
import com.klef.jfsd.springboot.service.HotelBookingService;
import com.klef.jfsd.springboot.service.HotelService;
import com.klef.jfsd.springboot.service.RentalBookingService;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class ClientController {

	@Autowired
	CustomerService customerService;

	@Autowired
	private AdminService adminService;

	@Autowired
	private RentalBookingService rentalBookingService;

	@Autowired
	private ContactService contactService;

	@Autowired
	private HotelBookingService bookingService;
	
	@Autowired
	private HotelService hotelService;

	@GetMapping("/")
	public ModelAndView demo() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}

	@GetMapping("home")
	public ModelAndView home() {
		ModelAndView mv = new ModelAndView("home");
		return mv;
	}

	@GetMapping("about")
	public ModelAndView about() {
		ModelAndView mv = new ModelAndView("about");
		return mv;
	}

	@GetMapping("touristattractions")
	public ModelAndView touristattractions() {
		ModelAndView mv = new ModelAndView("touristattractions");
		return mv;
	}

	@GetMapping("healthservices")
	public ModelAndView healthservices() {
		ModelAndView mv = new ModelAndView("healthcareservices");
		return mv;
	}

	@GetMapping("hotels")
	public ModelAndView hotels() {
		ModelAndView mv = new ModelAndView();
		List<Hotel> hlist = hotelService.viewallhotels();
		mv.setViewName("hotels");
		mv.addObject("hlist", hlist);
		return mv;
	}

	@GetMapping("transport")
	public ModelAndView transport() {
		ModelAndView mv = new ModelAndView("transportservices");
		return mv;
	}

	@GetMapping("colleges")
	public ModelAndView colleges() {
		ModelAndView mv = new ModelAndView("colleges");
		return mv;
	}

	@GetMapping("jobs")
	public ModelAndView jobs() {
		ModelAndView mv = new ModelAndView("jobs");
		return mv;
	}

	@GetMapping("login")
	public ModelAndView customerlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("login");
		return mv;
	}

	@GetMapping("shoppingmalls")
	public ModelAndView shoppingmalls() {
		ModelAndView mv = new ModelAndView("shoppingmalls");
		return mv;
	}

	@GetMapping("restaurants")
	public ModelAndView restaurants() {
		ModelAndView mv = new ModelAndView("restaurants");
		return mv;
	}

	@GetMapping("contactus")
	public ModelAndView contactus() {
		ModelAndView mv = new ModelAndView("contactus");
		return mv;
	}

	@GetMapping("registration")
	public ModelAndView registration() {
		ModelAndView mv = new ModelAndView("registration");
		return mv;
	}

	@GetMapping("bookings")
	public ModelAndView booking(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("bookings");
		HttpSession session = request.getSession();

		int cid = (int) session.getAttribute("cid");
		String cemail = (String) session.getAttribute("email");

		Customer c = customerService.viewcustomerbyid(cid);
		mv.addObject("cdata", c);

		return mv;
	}

//	@GetMapping("viewbookingbysession")
//	public void viewbookingbysession(HttpServletRequest request) 
//	{
//		HttpSession session = request.getSession();
//
//		int cid = (int) session.getAttribute("cid");
//		Customer c = customerService.viewcustomerbyid(cid);		
//		
//		String email = c.getEmail();
//		
//		List<RentalBookings> list = rentalBookingService.getDetailsByEmail(email);
//		System.out.println(list);		
//	}

	@PostMapping("registercustomer")
	public ModelAndView registerCustomer(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String name = request.getParameter("name");
			String uname = request.getParameter("uname");
			String email = request.getParameter("email");
			String contact = request.getParameter("contact");
			String pwd = request.getParameter("pwd");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String address = request.getParameter("address");

			Customer c = new Customer();
			c.setName(name);
			c.setUsername(uname);
			c.setEmail(email);
			c.setGender(gender);
			c.setDob(dob);
			c.setPassword(pwd);
			c.setContactno(contact);
			c.setAddress(address);
			c.setActive(true);

			msg = customerService.addcustomer(c);
			mv.setViewName("login"); // Redirect to the login page on success
			mv.addObject("message", msg);
		} catch (Exception e) {
			mv.setViewName("loginfailed");
			msg = e.getMessage();
			mv.addObject("message", msg);
		}
		return mv;
	}

	@PostMapping("checkcustomerlogin")
	public ModelAndView checkcustomerlogin(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");

		Customer c = customerService.checkcustomerlogin(email, pwd);

		if (c != null) {
			// session created only after login successfull
			HttpSession session = request.getSession();
			session.setAttribute("cid", c.getId());// eid is a session variable
			session.setAttribute("cname", c.getName());// ename is a session variable
			session.setAttribute("email", c.getEmail());
			// session
			mv.setViewName("home");
		} else {
			mv.setViewName("loginfailed");
			mv.addObject("message", "Login Failed");
		}
		return mv;
	}

	@PostMapping("rentalbooking")
	public ModelAndView rentalbooking(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("rental_name");
			String contact = request.getParameter("rental_contact");
			String email = request.getParameter("rental_email");
			String address = request.getParameter("rental_address");
			String vehicle = request.getParameter("rental_vehicle");
			String date = request.getParameter("rental_date");
			String time = request.getParameter("rental_time");

			RentalBookings rb = new RentalBookings();
			rb.setName(name);
			rb.setNumber(contact);
			rb.setEmail(email);
			rb.setAddress(address);
			rb.setVehicle(vehicle);
			rb.setDate(date);
			rb.setTime(time);

//			  System.out.println(rb.toString());

			msg = rentalBookingService.addbooking(rb);
			System.out.println(msg);
			mv.setViewName("bookings");
			mv.addObject("message", msg);
		} catch (Exception e) {
			mv.setViewName("bookings");
			msg = e.getMessage();
			mv.addObject("message", msg);
		}
		return mv;
	}

	@PostMapping("inserthotelbooking")
	public ModelAndView inserthotelbooking(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;

		try {
			String name = request.getParameter("hotel_name");
			String contact = request.getParameter("hotel_contact");
			String email = request.getParameter("hotel_email");
			String hotel = request.getParameter("hotel");
			String checkindate = request.getParameter("hotel_checkindate");
			String checkintime = request.getParameter("hotel_checkintime");
			String checkoutdate = request.getParameter("hotel_checkoutdate");
			String checkouttime = request.getParameter("hotel_checkouttime");

			HotelBookings hb = new HotelBookings();
			hb.setName(name);
			hb.setContact(contact);
			hb.setEmail(email);
			hb.setHotel(hotel);
			hb.setCheckindate(checkindate);
			hb.setCheckintime(checkintime);
			hb.setCheckoutdate(checkoutdate);
			hb.setCheckouttime(checkouttime);

			msg = bookingService.addbooking(hb);

			mv.setViewName("bookings");
			mv.addObject("message", msg);

		} catch (Exception e) {
			mv.setViewName("bookings");
			msg = e.getMessage();
			mv.addObject("message", msg);
		}
		return mv;
	}

	@GetMapping("allbookings")
	public ModelAndView viewallhotelbookings(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("bookingsofallusers");

		List<HotelBookings> list = bookingService.viewallhotelbookings();
		mv.addObject("blist", list);

		List<RentalBookings> list2 = rentalBookingService.viewallrentalbookings();
		mv.addObject("rlist", list2);

		return mv;
	}

	@GetMapping("mybookings")
	public ModelAndView mybookings(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView("mybookings");

		HttpSession session = request.getSession();

		int cid = (int) session.getAttribute("cid");
		Customer c = customerService.viewcustomerbyid(cid);

		String email = c.getEmail();
		List<RentalBookings> rlist = rentalBookingService.getDetailsByEmail(email);
		List<HotelBookings> hlist = bookingService.getDetailsByEmail(email);
		System.out.println(hlist);
		mv.addObject("rlist", rlist);
		mv.addObject("hlist", hlist);
		return mv;
	}

	@PostMapping("contact")
	public ModelAndView contactusbackend(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();
		String msg = null;
		try {
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String comment = request.getParameter("comment");

			Contactus cu = new Contactus();
			cu.setName(name);
			cu.setEmail(email);
			cu.setComment(comment);

			msg = contactService.insert(cu);
			mv.setViewName("contactus");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("contactus");
			mv.addObject("message", msg);
		}
		return mv;
	}

	@GetMapping("adminlogin")
	public ModelAndView adminlogin() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminlogin");
		return mv;
	}

	@PostMapping("checkadminlogin")
	public ModelAndView checkadminlogin(HttpServletRequest request) {
		String uname = request.getParameter("uname");
		String pwd = request.getParameter("pwd");

		Admin a = adminService.checkadminlogin(uname, pwd);
		ModelAndView mv = new ModelAndView();
		if (a != null) {
			mv.setViewName("adminhome");

			long customercount = adminService.customercount();

			mv.addObject("ccount", customercount);

		} else {
			mv.setViewName("adminlogin");
			mv.addObject("message", "Login Failed");
		}

		return mv;
	}

	@GetMapping("viewallcustomers")
	public ModelAndView viewallcustomers() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewallcustomers");

		List<Customer> customerList = adminService.viewallcustomers();
		mv.addObject("customerdata", customerList);
		return mv;
	}

	@GetMapping("adminhome")
	public ModelAndView adminhome() {
		long customercount = adminService.customercount();

		ModelAndView mv = new ModelAndView();
		mv.setViewName("adminhome");
		mv.addObject("ccount", customercount);

		return mv;
	}

	@GetMapping("view")
	public ModelAndView viewcustomerdemo(@RequestParam("id") int cid) {
		Customer c = adminService.viewcustomerbyid(cid);
		ModelAndView mv = new ModelAndView();
		mv.setViewName("viewcustomerbyid");
		mv.addObject("c", c);
		return mv;
	}

	@GetMapping("deletecustomer")
	public ModelAndView deletecustomer() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("deletecustomer");

		List<Customer> customerlist = adminService.viewallcustomers();

		mv.addObject("customerdata", customerlist);

		return mv;
	}

	@GetMapping("delete/{id}")
	public String deleteaction(@PathVariable("id") int cid) {
		adminService.deletecustomer(cid);
		return "redirect:/deletecustomer";
	}

	@GetMapping("updatestatus")
	public ModelAndView updatestatus() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestatus");

		List<Customer> customerlist = adminService.viewallcustomers();
		mv.addObject("customerdata", customerlist);

		return mv;
	}

	@GetMapping("setstatus")
	public ModelAndView setstatusaction(@RequestParam("id") int cid, @RequestParam("status") boolean status) {
		int n = adminService.updatestatus(cid, status);

		ModelAndView mv = new ModelAndView();
		mv.setViewName("updatestatus");

		List<Customer> customerlist = adminService.viewallcustomers();
		mv.addObject("customerdata", customerlist);

		if (n > 0) {
			mv.addObject("message", "Status Updated Successfully");
		} else {
			mv.addObject("message", "Failed to Update Status");
		}
		return mv;
	}

	@GetMapping("updateprofile")
	public ModelAndView updatecustomer(HttpServletRequest request) {
		ModelAndView mv = new ModelAndView();

		HttpSession session = request.getSession();

		mv.setViewName("updateprofile");

		mv.addObject("cid", session.getAttribute("cid"));
		mv.addObject("cname", session.getAttribute("cname"));

		int id = (int) session.getAttribute("cid");

		Customer c = customerService.viewcustomerbyid(id);

		mv.addObject("c", c);

		return mv;
	}

	@PostMapping("update")
	public ModelAndView updateAction(
			// @RequestParam("profileImage") MultipartFile profileImage,
			@RequestParam("name") String name, @RequestParam("uname") String username,
			@RequestParam("email") String email, @RequestParam("contact") String contactno,
			@RequestParam("pwd") String password, @RequestParam("dob") String dateofBirth,
			@RequestParam("address") String address, HttpServletRequest request) {
		String msg = null;
		ModelAndView mv = new ModelAndView();
		HttpSession session = request.getSession();
		mv.addObject("cid", session.getAttribute("cid"));
		mv.addObject("cname", session.getAttribute("cname"));
		int id = (int) session.getAttribute("cid");

		try {
			Customer c = customerService.viewcustomerbyid(id);
			c.setName(name);
			c.setUsername(username);
			c.setEmail(email);
			c.setContactno(contactno);
			c.setPassword(password);
			c.setDob(dateofBirth);
			c.setAddress(address);

			msg = customerService.updatecustomer(c);
			mv.setViewName("login");
			mv.addObject("message", msg);
		} catch (Exception e) {
			msg = e.getMessage();
			mv.setViewName("loginfailed");
			mv.addObject("message", msg);
		}
		return mv;
	}

	@GetMapping("addhotel")
	public ModelAndView addhotel() {
		ModelAndView mv = new ModelAndView("addhotel");
		return mv;
	}
	
	@GetMapping("displayhotelimage")
	public ResponseEntity<byte[]> displayprodimagedemo(@RequestParam("id") int id) throws IOException, SQLException {
		Hotel hotel = hotelService.viewhotelbyid(id);
		byte[] imageBytes = null;
		imageBytes = hotel.getHotelimage().getBytes(1, (int) hotel.getHotelimage().length());

		return ResponseEntity.ok().contentType(MediaType.IMAGE_JPEG).body(imageBytes);
	}
	

	@PostMapping("inserthotel")
	public ModelAndView inserthotel(HttpServletRequest request, @RequestParam("hotelimage") MultipartFile file)
			throws IOException, SerialException, SQLException 
	{
		String msg = null;
		ModelAndView mv = new ModelAndView();
		try {
			String name = request.getParameter("hotelname");
			String description = request.getParameter("hoteldescription");
			String phone = request.getParameter("hotelphone");
			String email = request.getParameter("hotelemail");
			String link = request.getParameter("hotellink");
			
			byte[] bytes = file.getBytes();
			Blob blob = new javax.sql.rowset.serial.SerialBlob(bytes);
			
			Hotel h = new Hotel();
			h.setName(name);
			h.setDescription(description);
			h.setPhone(phone);
			h.setEmail(email);
			h.setLink(link);
			h.setHotelimage(blob);
			
			msg = hotelService.addhotel(h);
			mv.setViewName("addhotel");
			mv.addObject("message", msg);
			System.out.println(msg);
		}
		catch(Exception e) {
			msg = e.getMessage();
			mv.setViewName("addhotel");
			mv.addObject("message", msg);
		}
		return mv;
	}
}
