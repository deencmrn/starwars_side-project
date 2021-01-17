package main.java;

import java.util.List;

public interface UserDAO {

	List<User> findAllUsers();
	
	User findByUsername(String username);
	
	int findIdByUsername(String username);
	
	boolean create(String username, String password);
	
	
}
