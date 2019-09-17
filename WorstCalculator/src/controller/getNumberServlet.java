package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.WorstCalculator;

/**
 * Servlet implementation class getNumberServlet
 */
@WebServlet("/getNumberServlet")
public class getNumberServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public getNumberServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String number1 = request.getParameter("number1");
		String number2 = request.getParameter("number2");
		WorstCalculator numbers = new WorstCalculator(Integer.parseInt(number1), Integer.parseInt(number2));

		request.setAttribute("numberResult", numbers);
		getServletContext().getRequestDispatcher("/result.jsp").forward(request, response);

	}

}
