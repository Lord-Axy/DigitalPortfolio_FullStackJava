package com.dp.DaoImpl;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.dp.Dao.UserDAO;
import com.dp.model.User;


@Repository
public class UserDAOImpl implements UserDAO{
	public static String named;
	
	@Autowired
	SessionFactory sessionFactory;

	public boolean addUser(User user) {
		try {
			System.out.println("DAo impl");
			Class.forName("org.h2.Driver");
			Connection con=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/test","sa","");			
			String sql = "insert into user (name, emailid, password)"+ " values (?, ?, ?)";
			PreparedStatement preparedStmt = null;
			preparedStmt = con.prepareStatement(sql);
			
			preparedStmt.setString(1, user.getName());
			preparedStmt.setString(2, user.getEmailId());
			preparedStmt.setString(3, user.getPassword());
			preparedStmt.execute();
			String name=user.getName();
			Statement stmt = con.createStatement();
			//sql = "create table "+name+" (id int primarykey , name varchar(255) , file blob)";
			sql="CREATE TABLE "+name+" (name varchar(255) PRIMARY KEY, file blob);";
			stmt.executeUpdate(sql);
			named=name;
			return true;
			
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
	}

	public User getUser(String Username) {
			
		User user=sessionFactory.getCurrentSession().get(User.class, Username);
		return user;
	}

	public void UpdateUser(User user) {
		
		
	}

	public void DeleteUser(User user) {
		
		
	}
	
	public List<User> allUsers() {
		
		List<User> allmyusers=sessionFactory.getCurrentSession().createQuery("From User").list();
		return allmyusers;
	}
}
