package com.dp.Dao;



import java.util.List;

import com.dp.model.User;


public interface UserDAO {
	public boolean addUser(User user);
	public User getUser(String Username);
	public void UpdateUser(User user);
	public void DeleteUser(User user);
	public List<User> allUsers();
}
