package com.ty.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ty.dao.ItemDao;
import com.ty.dto.Item;

public class EditItemServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Item item = new Item();
		String id = req.getParameter("itemId");
		String name = req.getParameter("itemName");
		String brand = req.getParameter("brand");
		String cost= req.getParameter("cost");
		String quantity = req.getParameter("quantity");
		String type= req.getParameter("type");

		item.setId(Integer.parseInt(id));
		item.setName(name);
	    item.setBrand(brand);
		item.setCost(Double.parseDouble(cost));
		item.setQuantity(Integer.parseInt(quantity));
		item.setType(type);

		ItemDao dao= new ItemDao();
		dao.updateItem(item);

		PrintWriter printWriter = resp.getWriter();
		printWriter.print("<html><body><h1>Item updated</h1></body></html>");
}
}
