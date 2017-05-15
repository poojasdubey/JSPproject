package com.sh.bookshop.beans;

import java.util.ArrayList;
import java.util.List;

import com.sh.bookshop.daos.Book;
import com.sh.bookshop.daos.BookDao;

public class BooksBean {
	private String subject;
	private List<Book> bookList;
	private int bookid;
	private Book book;
	public BooksBean() {
		this.subject = "";
		this.bookList = new ArrayList<>();
		this.bookid = 0;
		this.book = null;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public List<Book> getBookList() {
		return bookList;
	}
	public void setBookList(List<Book> bookList) {
		this.bookList = bookList;
	}
	public int getBookid() {
		return bookid;
	}
	public void setBookid(int bookid) {
		this.bookid = bookid;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
	}
	public void fetchBooks() {
		try (BookDao dao = new BookDao()) {
			dao.open();
			bookList = dao.getBooksOfSubject(subject);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	public void findBookDetails() {
		try (BookDao dao = new BookDao()) {
			dao.open();
			book = dao.getBook(bookid);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

