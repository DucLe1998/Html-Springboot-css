package utils;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import entites.User;


@WebFilter(
	urlPatterns="/admin/*",
	filterName="admin_filter"
)
public class AdminFilter implements Filter {
    public AdminFilter() {
    }

	public void destroy() {
	}

	public void doFilter(
		ServletRequest request,
		ServletResponse response,
		FilterChain chain
	) throws IOException, ServletException {
//		chain.doFilter(request, response);
//		HttpServletRequest httpReq = (HttpServletRequest) request;
//		HttpServletResponse httpRes = (HttpServletResponse) response;
//		HttpSession session = httpReq.getSession();
//		User u = (User) session.getAttribute("user");
//		System.out.println(u.getVaiTro());
//		if (u.getVaiTro() == 1) { 
//			httpRes.sendRedirect("/Assignment_Duclvph13338/login");
//			return ;
//		}
//		chain.doFilter(request, response); 
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
