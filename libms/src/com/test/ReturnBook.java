package com.test;

import java.io.IOException;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hqyj.dao.BookInfoDao;
import com.hqyj.dao.BorrowRecordDao;
import com.hqyj.dao.UserInfoDao;
import com.hqyj.dao.entity.BookInfo;
import com.hqyj.dao.entity.BorrowRecord;
import com.hqyj.dao.entity.UserInfo;
import com.hqyj.service.BorrowRecordService;

/**
 * Servlet implementation class ReturnBook
 */
@WebServlet("/ReturnBook")
public class ReturnBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReturnBook() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Date date = new Date();
		Calendar cal = Calendar.getInstance();
		SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		cal.setTime(date);//设置起时间		   		   		   
		cal.add(Calendar.MONTH, 1);//增加一个月   		
		String time=sf.format(cal.getTime());	
		SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置日期格式
		String borrowtime=df.format(new Date());
		int UserId = Integer.parseInt(request.getParameter("UserId"));
		int BookId = Integer.parseInt(request.getParameter("BookId"));
		HttpSession session = request.getSession();	
		
		BookInfoDao book = new BookInfoDao();
		BookInfo bookinfo=new BookInfo();
			
		UserInfoDao user = new UserInfoDao();
		UserInfo userinfo=new UserInfo();
		
		BorrowRecordService service=new BorrowRecordService();
        List<BorrowRecord> records=null;     
        List<String> record = new ArrayList<String>();		
        
        BorrowRecordDao record1 = new BorrowRecordDao();
        BorrowRecord recordinfo=new BorrowRecord();
        
		try {
			userinfo=user.selectUserByUserId(UserId);
			int lennum=userinfo.getLendedNum();
			bookinfo=book.selectBookById(BookId);
			int bookid=bookinfo.getBookId();
			recordinfo=record1.selectBorrowRecordbyUserId(UserId);			
			
			records=service.getAllBorrowRecord();
						
			record1.updateBorrowRecordbyid1(UserId, BookId, time, 1);
			book.updateState1(bookid,1);
			user.updateLendedNum1(UserId, lennum+1);
			response.sendRedirect("/html/adReturnBook.jsp");			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
