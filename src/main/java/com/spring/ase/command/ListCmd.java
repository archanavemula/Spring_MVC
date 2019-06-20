package com.spring.ase.command;
import com.spring.ase.dao.MyAccountDao;
import com.spring.ase.dto.BDto;

import java.util.ArrayList;

import org.springframework.ui.Model;


public class ListCmd implements ICommand {
	public void execute(Model model) {
		// TODO Auto-generated method stub
		MyAccountDao dao = new MyAccountDao();
		ArrayList<BDto> dtos = dao.list();
		model.addAttribute("list", dtos);
		dao.list();		
		
		BDto d = dtos.get(0);
		System.out.println("+++++++"+ d.getName());
	}
}
