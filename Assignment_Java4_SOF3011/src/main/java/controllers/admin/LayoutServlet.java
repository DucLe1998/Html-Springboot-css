package controllers.admin;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dao.UserDAO;
import entities.User;
import utils.JpaUtil;
import utils.EncryptUtil;
@WebServlet({
	"/layout/index",
	"/layout/create",
	"/layout/store",
	"/layout/edit",
	"/layout/update",
	"/layout/delete",
	"/layout/show",
})
public class LayoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	
    public LayoutServlet() {
        super();
        this.userDAO = new UserDAO();
    }

	protected void doGet(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("index")) {
			 this.index(request, response);
		} else if (uri.contains("create")) {
			 this.create(request, response);
		} else if (uri.contains("edit")) {
			 this.edit(request, response);
		} else if (uri.contains("show")) {
			 this.show(request, response);
		} else if (uri.contains("delete")) {
			 this.delete(request, response);
		} else {
			// redirect 404
		}
	}

	protected void doPost(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		String uri = request.getRequestURI();
		if (uri.contains("store")) {
			 this.store(request, response);
		} else if (uri.contains("update")) {
			 this.update(request, response);
		} else {
			// redirect 404
		}
	}

	private void index(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
//		List<User> ds = this.userDAO.all();		
//		request.setAttribute("ds", ds);
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/layouts/index.jsp");	
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}

	private void create(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		request.setAttribute("view",
			"/views/admin/users/create.jsp");
		request.getRequestDispatcher("/views/layout.jsp")
		.forward(request, response);
	}

	private void edit(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		User entity = this.userDAO.findByID(id);
		request.setAttribute("user", entity);
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/layouts/edit.jsp");	
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}

	private void show(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
	}
	
	
	
	private void delete(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
//		String idStr = request.getParameter("id");
//		int id = Integer.parseInt(idStr);
//		User entity = this.userDAO.findByID(id);
//		try {
//			this.userDAO.delete(entity);
//			// TODO: Thông báo thành công
//		} catch (Exception e) {
//			e.printStackTrace();
//			// TODO: Thông báo lỗi
//		}

		response.sendRedirect("/SP22B2_SOF3011_IT16301"
			+ "/admin/users/index");
	}

	private void store(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			User entity = new User();
			BeanUtils.populate(entity, request.getParameterMap());

			String encrypted = EncryptUtil.encrypt(
					request.getParameter("password")
			);

			entity.setPassword(encrypted);
			
			this.userDAO.create(entity);
			session.setAttribute("message", "Thêm mới thành công");
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/users/index");
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("error", "Thêm mới thất bại");
			// Thông báo lỗi
//			response.sendRedirect("/Assignment_Java4_SOF3011"
//				+ "/admin/users/create");
		}
	}

	private void update(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		try {
			User entity = new User();
			BeanUtils.populate(entity, request.getParameterMap());

			this.userDAO.update(entity);
			System.out.println("YEAHHH");
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/users/index");
		} catch (Exception e) {
			e.printStackTrace();
			System.out.println("lỖI RÔIFFF");
			// Thông báo lỗi
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/users/edit");
		}
	}
		
}