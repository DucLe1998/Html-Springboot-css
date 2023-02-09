package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.apache.commons.beanutils.BeanUtils;

import dao.UserDAO;
import entities.User;


@WebServlet("/infor")
public class UpdateInforServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	
    public UpdateInforServlet() {
        super();
        this.userDAO = new UserDAO();
    }

	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response
	) throws ServletException, IOException {
		HttpSession session = request.getSession();		
		User entity = (User) session.getAttribute("user");
		int id = entity.getId();
		User newentity = this.userDAO.findByID(id);
		request.setAttribute("user", newentity);
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/layouts/edit.jsp");	
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response
	) throws ServletException, IOException {
		try {
			String idStr = request.getParameter("id");
			int id = Integer.parseInt(idStr);
			User entity = this.userDAO.findByID(id);
			request.setAttribute("user", entity);
			BeanUtils.populate(entity, request.getParameterMap());
			this.userDAO.update(entity);
			
			System.out.println("Thành công rồiiiiiii");
			response.sendRedirect("/Assignment_Java4_SOF3011" + "/infor");

		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("lỗi rồiiiii");
			// Thông báo lỗi
//			response.sendRedirect("/Assignment_Java4_SOF3011"
//				+ "/admin/users/edit");
		}
	}

}
