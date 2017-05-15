package com.sh.bookshop.beans;

import java.util.ArrayList;
import java.util.List;

import com.sh.bookshop.daos.BookDao;

public class SubjectsBean {
	private List<String> subList;
	public SubjectsBean() {
		this.subList = new ArrayList<>();
	}
	public List<String> getSubList() {
		return subList;
	}
	public void setSubList(List<String> subList) {
		this.subList = subList;
	}
	public void fetchSubjects() {
		try (BookDao dao = new BookDao()) {
			dao.open();
			subList = dao.getSubjects();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}


