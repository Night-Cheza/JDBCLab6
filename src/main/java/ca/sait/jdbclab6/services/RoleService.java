package ca.sait.jdbclab6.services;

import ca.sait.jdbclab6.dataaccess.RoleDB;
import ca.sait.jdbclab6.models.Role;
import java.util.List;


public class RoleService {
	private RoleDB roleDB = new RoleDB();

	public List<Role> getAll() throws Exception {
		List<Role> roles = this.roleDB.getAll();
		return roles;
	}
}
