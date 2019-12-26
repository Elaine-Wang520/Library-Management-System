package com.hqyj.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.codehaus.jackson.map.ObjectMapper;

import com.hqyj.dao.entity.BookInfo;
import com.hqyj.service.BookInfoService;


@WebServlet("/BookInfo")
public class BookInfoController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private BookInfoService bookService = new BookInfoService();
    public BookInfoController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.addHeader("Access-Control-Allow-Origin", "*");
		PrintWriter pw = response.getWriter();
		ObjectMapper mapper = new ObjectMapper();
		String dispatch = request.getParameter("dispatch");
		if(dispatch==null) {
			dispatch = "";
		}
		List<BookInfo> books = null;
		BookInfo book = new BookInfo();
		int id = 0;
		try {
			switch (dispatch) {
			case "init":
				bookService.initBook();
				pw.println("init");
				break;
			case "add":
				book.setBookId(Integer.parseInt(request.getParameter("BookId")));				
            	book.setBookName(request.getParameter("BookName"));
            	book.setAuthor(request.getParameter("Author"));
            	book.setTranslator(request.getParameter("Translator"));
            	book.setPrice(Integer.parseInt(request.getParameter("Price")));
            	book.setISBNCode(request.getParameter("ISBNCode"));
            	book.setComeUpTime(request.getParameter("ComeUpTime"));
            	book.setPublishCompany(request.getParameter("PublishCompany"));
            	book.setState(Integer.parseInt(request.getParameter("State")));
            	book.setEnteringMen(request.getParameter("EnteringMen"));
            	book.setEnteringDate(request.getParameter("EnteringDate"));
				bookService.addBook(book);
				pw.println("add");
				break;
			case "delete":
				id = Integer.parseInt(request.getParameter("BookId"));
				bookService.deleteBook(id);
				pw.print("delete");
				break;
			case "update":	
				book.setBookId(Integer.parseInt(request.getParameter("BookId")));
            	book.setBookName(request.getParameter("BookName"));
            	book.setAuthor(request.getParameter("Author"));
            	book.setTranslator(request.getParameter("Translator"));
            	book.setPrice(Integer.parseInt(request.getParameter("Price")));
            	book.setISBNCode(request.getParameter("ISBNCode"));
            	book.setComeUpTime(request.getParameter("ComeUpTime"));
            	book.setPublishCompany(request.getParameter("PublishCompany"));
            	book.setState(Integer.parseInt(request.getParameter("State")));
            	book.setEnteringMen(request.getParameter("EnteringMen"));
            	book.setEnteringDate(request.getParameter("EnteringDate"));    	          	
				bookService.updateBook(book);
				pw.println("update");
				break;
			case "updateState":	
				book.setBookId(Integer.parseInt(request.getParameter("BookId")));            	
            	book.setState(Integer.parseInt(request.getParameter("State")));             	          	
				bookService.updateState(book);
				pw.println("updateState");
				break;
			case "getbyid":
				id = Integer.parseInt(request.getParameter("id"));
				book = bookService.getBookById(id);
				mapper.writeValue(pw, book);
				break;	
			case "getbyname":
				String bookname = request.getParameter("id");
				books = bookService.getBookbyname(bookname);
				mapper.writeValue(pw, books);
				break;
			case "list":
				books = bookService.getAllBook();
				mapper.writeValue(pw, books);
				break;				
			default:
				bookService.initBook();
				pw.println("init");
				break;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
