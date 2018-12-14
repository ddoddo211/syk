package kr.co.ffunq.user.web;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String adminid = "admin";
		String adminpass = "java";

		String userId = request.getParameter("userId");
		String pass = request.getParameter("pass");

		if(userId.equals(adminid) && pass.equals(adminpass)){
			request.getSession().setAttribute("userId",userId);
			
			RequestDispatcher rd = request.getRequestDispatcher("/list");
			rd.forward(request, response);

		} else {
			RequestDispatcher rd = request.getRequestDispatcher("/list");
			rd.forward(request, response);
		}
		
	}

}
