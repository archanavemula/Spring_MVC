package com.spring.ase.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.spring.ase.dto.BDto;
import com.spring.ase.dto.MyAccountDto;

public class MyAccountDao {

	DataSource dataSource;
	public MyAccountDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
 
	}

public int updateMember(MyAccountDto bdto) {	
	try {
				
		String query1 ="insert into userdets (firstname,email,address,city,state,zip,cardname,cardnumber,expmonth,expyear,cvv) values('"+ bdto.getFirstname()+"','"+bdto.getEmail() + "','"+bdto.getAddress()+"','"+bdto.getCity()+"','"+bdto.getState()+"','"+bdto.getZip() +"','"  + bdto.getCname() +"','" +bdto.getCcnum()+"','"+bdto.getExpmonth()+"','"+bdto.getExpyear()+"','"+bdto.getCvv() + "')";
		 
		int res = updateTable(query1);

		System.out.println(res);
	}catch(Exception e) {
		e.printStackTrace();
	}
	return 0;
	
}


public int updateTable(String query) {
	
	//ArrayList<BDto> dtos = new ArrayList<BDto>();
	Connection connection = null;
	PreparedStatement preparedStatement = null;
	int result =0;
	
	try {
		connection = dataSource.getConnection();
			   
		System.out.println(query);
		
		preparedStatement = connection.prepareStatement(query);
		result = preparedStatement.executeUpdate();
		System.out.println(result);
		
		
	}catch(Exception e) {
		e.printStackTrace();
	}finally {
		try {
			if(preparedStatement != null) preparedStatement.close();
			if(connection != null) connection.close();
			
		}catch(Exception e2) {
			
		}
	}
	
	return result;
	
}
	
}
