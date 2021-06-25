package com.zjw;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


/**
 * Servlet implementation class StuAddSerclet
 */
@WebServlet("/StuAddServlet")
public class StuAddServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StuAddServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		String stuName = request.getParameter("Name");
		String stuHobby = request.getParameter("Hobby");
		
		Stu ss = new Stu();
		ss.setName(stuName);
		ss.setHobby(stuHobby);
		
		StuManager sm = new StuManager();
		sm.addStu(ss);
		response.getWriter().write("<script language='javascript'>alert('Ìí¼Ó³É¹¦');window.location.href='./query.jsp';</script>");
//		request.getRequestDispatcher("./query.jsp").forward(request, response);
}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
