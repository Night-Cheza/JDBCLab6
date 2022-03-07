package ca.sait.jdbclab6.models;

import java.io.Serializable;

/**
 * Represents a role
 * @author Leila Nalivkina, Nick Hemnett
 */
public class Role implements Serializable {
	private int roleID;
	private String roleName;

	public Role() {
	}

	public Role(int roleID, String roleName) {
		this.roleID = roleID;
		this.roleName = roleName;
	}

	public int getId() {
		return roleID;
	}

	public void setId(int roleID) {
		this.roleID = roleID;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}
}
