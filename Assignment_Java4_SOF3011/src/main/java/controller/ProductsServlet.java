package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.beanutils.BeanUtils;

import dao.CategoryDAO;
import dao.ProductDAO;
import entities.Category;
import entities.Product;
import entities.User;

@WebServlet("/products")
@MultipartConfig
public class ProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public ProductDAO proDAO;
    public CategoryDAO cateDAO;
    public ProductsServlet() {
        super();
        this.proDAO = new ProductDAO();
        this.cateDAO = new CategoryDAO();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.getRequestDispatcher("/views/testProducts.jsp").forward(request, response);
		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {
			Product pro = new Product();
			BeanUtils.populate(pro, request.getParameterMap());
			
			String idStr = request.getParameter("category_id");
			int id = Integer.parseInt(idStr);
			 
			Category cate = this.cateDAO.findByID(id);
			pro.setCate(cate);
			System.out.println(pro.getTen());
			System.out.println(idStr);
			System.out.println(cate.getId());
			System.out.println(pro.getMauSac());
			System.out.println(pro.getSoLuong());
			System.out.println(pro.getDonGia());		
			System.out.println(pro.getKichThuoc());
			System.out.println(pro.getImg());
			/*
			 * User user = (User) session.getAttribute("user"); cate.setUser(user);
			 */
			this.proDAO.create(pro);
			
			session.setAttribute("message", "Thêm mới thành công");
			
			response.sendRedirect("/Assignment_Java4_SOF3011"
				+ "/admin/categories/index");
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("error", "Thêm mới thất bại");
//			response.sendRedirect("/Assignment_Java4_SOF3011"
//					+ "/admin/categories/index");
		}
	}

}
