package com.sh.bookshop.beans;

import com.sh.bookshop.daos.LoginDao;

public class LoginBean {
	private String user;
	private String pass;
	public LoginBean() {
		this.user = "";
		this.pass = "";
	}
	public String getUser() {
		return user;
	}
	public void setUser(String user) {
		this.user = user;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public boolean getStatus() {
		boolean success = false;
		try (LoginDao dao = new LoginDao()) {
			dao.open();
			success = dao.validate(user, pass);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return success;
	}
}

