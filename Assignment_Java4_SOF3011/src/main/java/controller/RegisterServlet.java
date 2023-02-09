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
import utils.EncryptUtil;


@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	
    public RegisterServlet() {
        super();
        this.userDAO = new UserDAO();
    }

	protected void doGet(
			HttpServletRequest request, 
			HttpServletResponse response
	) throws ServletException, IOException {
		request.setAttribute("menu","/views/layouts/menu.jsp");
		request.setAttribute("view","/views/layouts/register.jsp");
		request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}

	protected void doPost(
			HttpServletRequest request, 
			HttpServletResponse response
	) throws ServletException, IOException {
//		HttpSession session = request.getSession();
		try {
			User entity = new User();
			BeanUtils.populate(entity, request.getParameterMap());

			String encrypted = EncryptUtil.encrypt(
					request.getParameter("password")
			);

			entity.setPassword(encrypted);
			
			this.userDAO.create(entity);
//			session.setAttribute("message", "Thêm mới thành công");
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/login");
		} catch (Exception e) {
			e.printStackTrace();
//			session.setAttribute("error", "Thêm mới thất bại");
			// Thông báo lỗi
//			response.sendRedirect("/Assignment_Java4_SOF3011"
//				+ "/admin/users/create");
		}
	}

}
