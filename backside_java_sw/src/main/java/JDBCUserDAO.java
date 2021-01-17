package main.java;

import java.util.List;

import org.springframework.jdbc.support.rowset.SqlRowSet;

public class JDBCUserDAO implements UserDAO{

	private JdbcTemplate jdbcTemplate;
	
	public JDBCUserDao(JdbcTemplate jdbcTemplate) {
		this.jdbcTemplate = jdbcTemplate;
	}
	
	@Override
	public List<User> findAllUsers() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public User findByUsername(String username) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int findIdByUsername(String username) {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public boolean create(String username, String password) {
		// TODO Auto-generated method stub
		return false;
	}

	
	private User mapRowToUser(SqlRowSet rs) {
        User user = new User();
        user.setId(rs.getLong("user_id"));
        user.setUsername(rs.getString("username"));
        user.setPassword(rs.getString("password_hash"));
        user.setActivated(true);
        user.setAuthorities("ROLE_USER");
        return user;
    }
	
	
	
	
	
	
	
}
