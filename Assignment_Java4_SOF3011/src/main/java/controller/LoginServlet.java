package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.UserDAO;
import entities.User;
import utils.EncryptUtil;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private UserDAO userDAO;
	
    public LoginServlet() {
        super();
        this.userDAO = new UserDAO();
    }

	protected void doGet(
			HttpServletRequest request,
			HttpServletResponse response
	) throws ServletException, IOException {
			request.setAttribute("menu","/views/layouts/menu.jsp");
			request.setAttribute("view","/views/layouts/login.jsp");
			request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
	}

	protected void doPost(
			HttpServletRequest request,
			HttpServletResponse response
	) throws ServletException, IOException {
			String email = request.getParameter("email"),
				   pwd = request.getParameter("password");

			User u = this.userDAO.findByEmail(email);

			boolean check = EncryptUtil.check(pwd, u.getPassword());
			HttpSession session = request.getSession();
			if (check == true) {
				//Login success
				session.setAttribute("user", u);
				response.sendRedirect("/Assignment_Java4_SOF3011"
						+ "/layout/index");
			} else {
				//Login fail
				response.sendRedirect("/Assignment_Java4_SOF3011"
						+ "/login");
			}
	}

}
