package com.ty.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;

public class DeleteItemServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id = req.getParameter("id");
		int parseId = Integer.parseInt(id);
		System.out.println("ID is:" + id);

		PrintWriter pw = resp.getWriter();

		ItemDao dao = new ItemDao();
		boolean result = dao.deleteItem(parseId);
		if (result == true) {
			pw.print("<html><body><h1>Item is deleted</h1></body></html>");
		} else
			pw.print("<html><body><h1>Item is not deleted</h1></body></html>");
	}
}