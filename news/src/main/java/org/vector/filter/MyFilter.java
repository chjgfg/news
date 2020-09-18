package org.vector.filter;

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

@WebFilter(urlPatterns = "*.jsp") // 拦截路径
public class MyFilter implements Filter {

	public MyFilter() {
		
	}

	public void destroy() {
	}

	public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain)
			throws IOException, ServletException {

		HttpServletRequest hsp = (HttpServletRequest) req;
		HttpServletResponse hresp = (HttpServletResponse) resp;
		String header = hsp.getHeader("referer");
//		System.out.println("header" + header);
		String contextPath = hsp.getServletPath();
//		System.out.println("contextPath" + contextPath);
		Object attribute = hsp.getSession().getAttribute("user");
		Object attribute2 = hsp.getSession().getAttribute("stu");
		System.out.println("attribute" + attribute);
		if (contextPath.equals("/new/back/signin.jsp") || contextPath.equals("/new/front/login.jsp")
				|| contextPath.equals("/new/front/register.jsp") || contextPath.equals("/new/error.jsp")) {
			chain.doFilter(req, resp);
			return;
		}

		if (attribute != null) {
			if (!header.equals("")) {
				chain.doFilter(req, resp);
				return;
			}
		}

		if (attribute2 != null) {
			try {
				if (!header.equals("")) {
					chain.doFilter(req, resp);
					return;
				}
			} catch (Exception e) {
				e.getStackTrace();
			}

		}
	}

	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("前台登录:" + "http://localhost:8080/news/new/front/login.jsp");
		System.out.println("后台登录:" + "http://localhost:8080/news/new/back/signin.jsp");
	}

}
