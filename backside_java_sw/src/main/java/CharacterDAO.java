package main.java;

import java.util.List;

public interface CharacterDAO {

	
	List <Character>list(); //list the characters
	
	Character get (long id); //get id of character
	
	boolean save(Character characterToSave); //this will be only for admin user
	
	boolean update(long id, Character character); //this will be only for admin user
	
	boolean delete(long id); //this will be only for admin user

}
