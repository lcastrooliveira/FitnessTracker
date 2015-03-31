package com.pluralsight.security;

import java.io.Serializable;

import javax.sql.DataSource;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.security.access.PermissionEvaluator;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.userdetails.User;

public class FitnessPermissionEvaluator implements PermissionEvaluator {
	
	private DataSource datasource;	

	public boolean hasPermission(Authentication auth, Object targetDomainObject, Object permission) {
		JdbcTemplate template = new JdbcTemplate(datasource);
		
		Object [] args = {((User)auth.getPrincipal()).getUsername(),targetDomainObject.getClass().getName(),permission.toString()};
		int count = template.queryForObject("SELECT COUNT(*) FROM permissions p where p.username = ? and p.target = ? and p.permission = ?", args,Integer.class);
		System.out.println("count: "+count);
		if (count == 1) return true; else return false;		
	}

	public boolean hasPermission(Authentication arg0, Serializable arg1,
			String arg2, Object arg3) {
		// TODO Auto-generated method stub
		return false;
	}

	public DataSource getDatasource() {
		return datasource;
	}

	public void setDatasource(DataSource datasource) {
		this.datasource = datasource;
	}

	
	
}
