package com.spring.ase.command;

import com.spring.ase.dao.LoginDao;
import com.spring.ase.dto.BDto;

import java.util.ArrayList;

import javax.naming.NamingException;

import org.springframework.ui.Model;

public class ListCmd implements ICommand {

	public void execute(Model model) {
		// TODO Auto-generated method stub
		LoginDao dao;
		try {
			dao = new LoginDao();
			ArrayList<BDto> dtos = dao.list();
			model.addAttribute("list", dtos);
			dao.list();

			BDto d = dtos.get(0);
			System.out.println("+++++++" + d.getName());
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
