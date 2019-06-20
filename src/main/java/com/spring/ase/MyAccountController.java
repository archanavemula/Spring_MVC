package com.spring.ase;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.spring.ase.dao.MyAccountDao;
import com.spring.ase.dto.MyAccountDto;

/**
 * Handles requests for the application my account page.
 */
@Controller
public class MyAccountController {

	
	@RequestMapping("/myaccount")
	public String accountUpdate(Model model) {

		return "myaccount";
	}
	
	
	@RequestMapping(method = RequestMethod.POST, value = "/accountUpdate")
	public String accountUpdate(HttpServletRequest httpServletRequest, Model model) {

		String address = httpServletRequest.getParameter("address");
		String city = httpServletRequest.getParameter("city");
		String state = httpServletRequest.getParameter("state");
		String zip = httpServletRequest.getParameter("zip");
		String firstname = httpServletRequest.getParameter("firstname");

		String email = httpServletRequest.getParameter("email");
		String cname = httpServletRequest.getParameter("cardname");

		String ccnum = httpServletRequest.getParameter("cardnumber");
		String expmonth = httpServletRequest.getParameter("expmonth");
		String expyear = httpServletRequest.getParameter("expyear");
		String cvv = httpServletRequest.getParameter("cvv");

		MyAccountDto account = new MyAccountDto();
		account.setAddress(address);
		account.setCcnum(ccnum);
		account.setCity(city);
		account.setCname(cname);
		account.setCvv(cvv);
		account.setEmail(email);
		account.setExpmonth(expmonth);
		account.setExpyear(expyear);
		account.setFirstname(firstname);
		account.setState(state);
		account.setZip(zip);

		MyAccountDao dao = new MyAccountDao();
		dao.updateMember(account);

		//ModelAndView mv = new ModelAndView();
		model.addAttribute("firstname", firstname);
		//mv.setViewName("accountUpdateSuccess");

		return "/accountupdated";

		// return "loginDisplay";
	}

}
