package com.Stu;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class StuUp2Servlet
 */
@WebServlet("/StuUp2Servlet")
public class StuUp2Servlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuUp2Servlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String stuId1 = request.getParameter("ID1");
		String stuNo1 = request.getParameter("No1");
		String stuName1 = request.getParameter("Name1");
		String stuSex1 = request.getParameter("Sex1");
		String stuBirth1 = request.getParameter("Birth1");
		String stuEmail1 = request.getParameter("Email1");
		String stuTel1 = request.getParameter("Tel1");
		
		Stu ss = new Stu();
		 ss.setID(Integer.parseInt(stuId1));
		 ss.setNO(stuNo1);
		 ss.setName(stuName1);
		 ss.setSex(stuSex1);
		 ss.setBirth(stuBirth1);
		 ss.setEmail(stuEmail1);
		 ss.setTel(stuTel1);
		
		StuManager sm = new StuManager();
		sm.upStu(ss);
		response.getWriter().write("<script language='javascript'>alert('修改成功');window.location.href='./StuList.jsp';</script>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
