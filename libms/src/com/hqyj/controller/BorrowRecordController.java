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

import com.hqyj.dao.entity.BorrowRecord;
import com.hqyj.service.BorrowRecordService;

@WebServlet("/BorrowRecord")
public class BorrowRecordController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private BorrowRecordService recordService = new BorrowRecordService();
    public BorrowRecordController() {
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
		List<BorrowRecord> records = null;
		BorrowRecord record= new BorrowRecord();
		int id = 0;
		int id1 = 0;
		int id2 = 0;		
		// TODO Auto-generated method stub
		try {
			switch (dispatch) {
			case "init":
				recordService.initBorrowRecord();
				pw.println("init");
				break;
			case "list":
				records = recordService.getAllBorrowRecord();
				mapper.writeValue(pw, records);
				break;
			case "getBorrowbyUserId":
				id = Integer.parseInt(request.getParameter("UserId"));
				records=recordService.getBorrowbyUserId(id);
				mapper.writeValue(pw, records);
				break;
			case "getBorrowOntime":
				id = Integer.parseInt(request.getParameter("UserId"));				
				records=recordService.getBorrowOntime(id);
				mapper.writeValue(pw, records);
				break;
			case "getbyBookname":
				String name=request.getParameter("BookName");						
				records=recordService.getbyBookName(name);
				mapper.writeValue(pw, records);
				break;
			case "add":
				record.setBorrowId(Integer.parseInt(request.getParameter("BorrowId")));
				record.setUserId(Integer.parseInt(request.getParameter("UserId")));
				record.setBookId(Integer.parseInt(request.getParameter("BookId")));
				record.setBookName(request.getParameter("BookName"));
				record.setBorrowTime(request.getParameter("BorrowTime"));
				record.setShouldTime(request.getParameter("ShouldTime"));
				record.setReturnTime(request.getParameter("ReturnTime"));
				record.setState(Integer.parseInt(request.getParameter("State")));				
				recordService.addBorrowRecord(record);
				pw.println("add");
				break;
			case "deletebyBorrowId":
				id = Integer.parseInt(request.getParameter("BorrowId"));
				recordService.deleteBorrowRecordbybowid(id);
				pw.print("delete");
				break;
			case "deletebyUserIdandBookId":
				id1 = Integer.parseInt(request.getParameter("UserId"));
				id2= Integer.parseInt(request.getParameter("BookId"));
				recordService.deleteBorrowRecordbybowidandbookid(id1, id2);
				pw.print("delete");
				break;
			case "updateBorrowRecord":
				record.setBorrowId(Integer.parseInt(request.getParameter("BorrowId")));
				record.setUserId(Integer.parseInt(request.getParameter("UserId")));
				record.setBookId(Integer.parseInt(request.getParameter("BookId")));
				record.setBookName(request.getParameter("BookName"));
				record.setBorrowTime(request.getParameter("BorrowTime"));
				record.setShouldTime(request.getParameter("ShouldTime"));
				record.setReturnTime(request.getParameter("ReturnTime"));
				record.setState(Integer.parseInt(request.getParameter("State")));						
				recordService.updateBorrowRecord(record);
				pw.println("updateBorrowRecord");
				break;
			case "updateBorrowRecordbyid":
				record.setUserId(Integer.parseInt(request.getParameter("UserId")));
				record.setBookId(Integer.parseInt(request.getParameter("BookId")));		
				record.setReturnTime(request.getParameter("ReturnTime"));
				record.setState(Integer.parseInt(request.getParameter("State")));
				recordService.updateBorrowRecordbyid(record);
				pw.println("updateBorrowRecordbyid");
				break;
			case "getbyBookId":
				id = Integer.parseInt(request.getParameter("BookId"));
				record = recordService.getBorrowRecordByBookId(id);
				mapper.writeValue(pw,record);
				break;	
			case "getbyUserId":
				id = Integer.parseInt(request.getParameter("UserId"));
				record = recordService.getBorrowRecordByUserId(id);
				mapper.writeValue(pw,record);
				break;
			default:
				recordService.initBorrowRecord();
				pw.println("default");
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
