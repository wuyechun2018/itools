package itools.dao;

import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.stereotype.Repository;

import itools.model.User;

@Repository
public class UserDao extends JdbcTemplateDao {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<User> getUserList() {
		String sql="SELECT * FROM T_USER";
		return getJdbcTemplate().query(
		        sql,
		        new Object[]{},
		        new BeanPropertyRowMapper(User.class));
		
	}


}
