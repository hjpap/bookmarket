package com.wei.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class EncodeFilter implements Filter {
	
	String encode ="UTF-8";
	
	public void destroy() {
		// TODO Auto-generated method stub

	}

	public void doFilter(ServletRequest req, ServletResponse res,
			FilterChain chain) throws IOException, ServletException {
		req.setCharacterEncoding(encode);
		//System.out.println("encode---------->"+encode);
		chain.doFilter(req, res);
	}

	public void init(FilterConfig config) throws ServletException {
		encode = config.getInitParameter("encode");
	}

}
