package controllers.admin;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dao.CategoryDAO;
import dao.UserDAO;
import entities.Category;
import entities.User;
import utils.EncryptUtil;

@WebServlet({
	"/admin/categories/index",
	"/admin/categories/create",
	"/admin/categories/store",
	"/admin/categories/edit",
	"/admin/categories/update",
	"/admin/categories/delete",
	"/admin/categories/show",
})
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	private CategoryDAO categoryDAO;
	
    public CategoryServlet() {
        super();
        this.userDAO = new UserDAO();
        this.categoryDAO = new CategoryDAO();
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
		List<Category> ds = this.categoryDAO.all();
		List<Category> shirt = this.categoryDAO.shirt();
		List<Category> trousers = this.categoryDAO.trousers();
		request.setAttribute("ds", ds);
		request.setAttribute("shirt", shirt);
		request.setAttribute("trousers", trousers);
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/admin/categories/index.jsp");	
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}

	private void create(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		List<Category> ds = this.categoryDAO.all();
		List<Category> shirt = this.categoryDAO.shirt();
		List<Category> trousers = this.categoryDAO.trousers();
		request.setAttribute("ds", ds);
		request.setAttribute("shirt", shirt);
		request.setAttribute("trousers", trousers);
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/admin/categories/create.jsp");	
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}
	
	User user;
	private void edit(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		List<Category> shirt = this.categoryDAO.shirt();
		List<Category> trousers = this.categoryDAO.trousers();
		request.setAttribute("shirt", shirt);
		request.setAttribute("trousers", trousers);
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		Category entity = this.categoryDAO.findByID(id);
		user = entity.getUser();
		request.setAttribute("cate", entity);
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/admin/categories/edit.jsp");	
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
		HttpSession session = request.getSession();
		String idStr = request.getParameter("id");
		int id = Integer.parseInt(idStr);
		Category entity = this.categoryDAO.findByID(id);
		try {
			this.categoryDAO.delete(entity);
			// TODO: Th??ng b??o th??nh c??ng
		} catch (Exception e) {
			e.printStackTrace();
			// TODO: Th??ng b??o l???i
		}
		session.setAttribute("message", "X??a th??nh c??ng");
		response.sendRedirect("/Assignment_Java4_SOF3011"
			+ "/admin/categories/create");
	}

	private void store(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Category cate = new Category();
			BeanUtils.populate(cate, request.getParameterMap());
			User user = (User) session.getAttribute("user");
			cate.setUser(user);
			this.categoryDAO.create(cate);
			
			session.setAttribute("message", "Th??m m???i th??nh c??ng");
			
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/categories/create");
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("error", "Th??m m???i th???t b???i");
			response.sendRedirect("/Assignment_Java4_SOF3011"
					+ "/admin/categories/create");
		}
	}

	private void update(
		HttpServletRequest request,
		HttpServletResponse response
	) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Category entity = new Category();
			BeanUtils.populate(entity, request.getParameterMap());
			entity.setUser(user);
			this.categoryDAO.update(entity);

			session.setAttribute("message", "C???p nh???t th??nh c??ng");
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/categories/create");
		} catch (Exception e) {
			e.printStackTrace();
			// Th??ng b??o l???i
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/users/edit");
		}
	}
		
}

