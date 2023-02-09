package controllers.admin;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

import org.apache.commons.beanutils.BeanUtils;

import dao.CategoryDAO;
import dao.ProductDAO;
import dao.UserDAO;
import entities.Category;
import entities.Product;
import entities.User;

@WebServlet({
	"/admin/products/index",
	"/admin/products/create",
	"/admin/products/store",
	"/admin/products/edit",
	"/admin/products/update",
	"/admin/products/delete",
	"/admin/products/show",
})
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
    			List<Category> ds = this.cateDAO.all();
    			List<Category> shirt = this.cateDAO.shirt();
    			List<Category> trousers = this.cateDAO.trousers();   			
    			request.setAttribute("ds", ds);
    			request.setAttribute("shirt", shirt);
    			request.setAttribute("trousers", trousers);
    			request.setAttribute("menu","/views/layouts/menu.jsp");
    			request.setAttribute("view","/views/admin/products/index.jsp");	
    			request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
    		}
    	
    	private void create(
    			HttpServletRequest request,
    			HttpServletResponse response
    		) throws ServletException, IOException {
    			List<Product> dsPro = this.proDAO.all();
    			List<Category> ds = this.cateDAO.all();
    			List<Category> shirt = this.cateDAO.shirt();
    			List<Category> trousers = this.cateDAO.trousers();
    			request.setAttribute("dsPro", dsPro);
    			request.setAttribute("ds", ds);
    			request.setAttribute("shirt", shirt);
    			request.setAttribute("trousers", trousers);
    			request.setAttribute("menu","/views/layouts/menu.jsp");
    			request.setAttribute("view","/views/admin/products/create.jsp");	
    			request.getRequestDispatcher("/views/layout.jsp").forward(request, response);
    		}
    	String img;
    	private void edit(
    		HttpServletRequest request,
    		HttpServletResponse response
    	) throws ServletException, IOException {
    		List<Category> ds = this.cateDAO.all();
    		List<Category> shirt = this.cateDAO.shirt();
    		List<Category> trousers = this.cateDAO.trousers();
    		request.setAttribute("ds", ds);
    		request.setAttribute("shirt", shirt);
    		request.setAttribute("trousers", trousers);
    		String idStr = request.getParameter("id");
    		int id = Integer.parseInt(idStr);
    		Product pro = this.proDAO.findByID(id);
    		img = pro.getImg();
    		//pro.getCate().getId();
    		request.setAttribute("pro", pro);
    		request.setAttribute("menu","/views/layouts/menu.jsp");
    		request.setAttribute("view","/views/admin/products/edit.jsp");	
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
    			Product entity = this.proDAO.findByID(id);
    			try {
    				this.proDAO.delete(entity);
    				// TODO: Thông báo thành công
    			} catch (Exception e) {
    				e.printStackTrace();
    				// TODO: Thông báo lỗi
    			}
    			session.setAttribute("message", "Xóa thành công");
    			response.sendRedirect("/Assignment_Java4_SOF3011"
    				+ "/admin/products/create");
    		}

    		private void store(
    			HttpServletRequest request,
    			HttpServletResponse response
    		) throws ServletException, IOException {
    			HttpSession session = request.getSession();
    			try {
    				
    				//String img = request.getParameter("description"); // Retrieves <input type="text" name="description">
    				Part filePart = request.getPart("img"); // Retrieves <input type="file" name="file">
    				String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
    				
    				File uploads = new File("C:\\Users\\Hi\\eclipse-workspace\\Assignment_Java4_SOF3011\\src\\main\\webapp\\images\\products");
    				File file = new File(uploads, fileName);
    				
    				try (InputStream input = filePart.getInputStream()) {
    				    Files.copy(input, file.toPath());
    				} catch (Exception e) {
    					file = File.createTempFile(fileName, "", uploads);
        				try (InputStream input = filePart.getInputStream()) {
        				    Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
        				}
					}
    				//InputStream fileContent = filePart.getInputStream();
    				
    				
    				
    				
    				Product pro = new Product();
    				BeanUtils.populate(pro, request.getParameterMap());
    				
    				String idStr = request.getParameter("category_id");
    				int id = Integer.parseInt(idStr);
    				
    				Category cate = this.cateDAO.findByID(id);
    				pro.setCate(cate);
    				pro.setImg(fileName);
    				this.proDAO.create(pro);
    				
    				session.setAttribute("message", "Thêm mới thành công");
    				
    				response.sendRedirect("/Assignment_Java4_SOF3011"
    					+ "/admin/products/create");
    			} catch (Exception e) {
    				e.printStackTrace();
    				session.setAttribute("error", "Thêm mới thất bại");
//    				response.sendRedirect("/Assignment_Java4_SOF3011"
//    						+ "/admin/products/index");
    			}
    		}

    		private void update(
    			HttpServletRequest request,
    			HttpServletResponse response
    		) throws ServletException, IOException {
    			HttpSession session = request.getSession();
    			try {
    				Part filePart = request.getPart("img"); // Retrieves <input type="file" name="file">
    				String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString(); // MSIE fix.
    				
    				File uploads = new File("C:\\Users\\Hi\\eclipse-workspace\\Assignment_Java4_SOF3011\\src\\main\\webapp\\images\\products");
    				File file = new File(uploads, fileName);
    				
    				Product entity = new Product();
    				BeanUtils.populate(entity, request.getParameterMap());
    				String idStr = request.getParameter("category_id");
    				int id = Integer.parseInt(idStr);   				
    				Category cate = this.cateDAO.findByID(id);
    				entity.setCate(cate);
					/*
					 * System.out.println(entity.getImg()); if (entity.getImg()==null) {
					 * 
					 * }
					 */
    				
    				if (fileName.equalsIgnoreCase(img)) {
    					System.out.println("chay vo if equals");
    					entity.setImg(fileName);
    					this.proDAO.update(entity);
    					session.setAttribute("message", "Cập nhật thành công");
        				response.sendRedirect("/Assignment_Java4_SOF3011"
        					+ "/admin/products/create");
        				return;
					} else if (!(fileName.isEmpty())){
						System.out.println("chay vo else if");
						entity.setImg(fileName);
						try (InputStream input = filePart.getInputStream()) {
	    				    Files.copy(input, file.toPath());
	    				} catch (Exception e) {
	    					file = File.createTempFile(fileName, "", uploads);
	        				try (InputStream input = filePart.getInputStream()) {
	        				    Files.copy(input, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
	        				}
						}
						this.proDAO.update(entity);   
						session.setAttribute("message", "Cập nhật thành công");
	    				response.sendRedirect("/Assignment_Java4_SOF3011"
	    					+ "/admin/products/create");
	    				return;
					} else {
						System.out.println("chay vo if null");
    					entity.setImg(img);
    					this.proDAO.update(entity);    
    					session.setAttribute("message", "Cập nhật thành công");
        				response.sendRedirect("/Assignment_Java4_SOF3011"
        					+ "/admin/products/create");
        				return;
					}
    				
    				
    			} catch (Exception e) {
    				e.printStackTrace();
    				// Thông báo lỗi
    				response.sendRedirect("/Assignment_Java4_SOF3011"
    					+ "/admin/users/edit");
    			}
    		}


}
