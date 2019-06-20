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

public class LoginDao {

	DataSource dataSource;

	public LoginDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/mysql");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

	public boolean checkLoginDetails(String id, String pw) {

		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "select id, password from member where id ='" + id + "'";

			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String Uid = resultSet.getString("id");
				String Upw = resultSet.getString("password");
				if (id.equals(Uid) && pw.equals(Upw))
					return true;

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();

			} catch (Exception e2) {

			}
		}

		return false;

	}

	public ArrayList<BDto> list() {

		ArrayList<BDto> dtos = new ArrayList<BDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		ResultSet resultSet = null;

		try {
			connection = dataSource.getConnection();
			String query = "select id, password, name, phone from member";

			preparedStatement = connection.prepareStatement(query);
			resultSet = preparedStatement.executeQuery();

			while (resultSet.next()) {
				String Uid = resultSet.getString("id");
				String Upw = resultSet.getString("password");
				String Uname = resultSet.getString("name");
				String Uphone = resultSet.getString("phone");
				BDto dto = new BDto(Uid, Upw, Uname, Uphone);
				dtos.add(dto);

				System.out.println(Uid);

			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null)
					resultSet.close();
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();

			} catch (Exception e2) {

			}
		}

		return dtos;

	}

	public int createMember(BDto bdto) {

		// ArrayList<BDto> dtos = new ArrayList<BDto>();
		Connection connection = null;
		PreparedStatement preparedStatement = null;
		int result = 0;

		try {
			connection = dataSource.getConnection();
			String query = "insert into member(id,password,name,phone) values ('" + bdto.getId() + "','" + bdto.getPw()
					+ "','" + bdto.getName() + "'," + bdto.getPhone() + ")";

			System.out.println(query);

			preparedStatement = connection.prepareStatement(query);
			result = preparedStatement.executeUpdate();
			System.out.println(result);

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (preparedStatement != null)
					preparedStatement.close();
				if (connection != null)
					connection.close();

			} catch (Exception e2) {

			}
		}

		return result;

	}

}
