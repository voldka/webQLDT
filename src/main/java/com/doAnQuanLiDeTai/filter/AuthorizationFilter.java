package com.doAnQuanLiDeTai.filter;

import com.doAnQuanLiDeTai.hibernateMODEL.User;
import com.doAnQuanLiDeTai.model.UserModel;
import com.doAnQuanLiDeTai.utils.SessionUtil;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthorizationFilter implements Filter {

    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        if (url.startsWith(request.getContextPath() + "/teacher")) {
            User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
            if (model != null) {
                if (model.getRole().getName().equals("TEACHER")) {
                    filterChain.doFilter(servletRequest, servletResponse);
                } else if (model.getRole().getName().equals("STUDENT")) {
                    response.sendRedirect(request.getContextPath() + "/student-home?message=not_permission");
                }
            } else {
                response.sendRedirect(request.getContextPath() + "/dang-nhap?message=not_login");
            }
        } else {
            if (url.startsWith(request.getContextPath() + "/student")) {
                User model = (User) SessionUtil.getInstance().getValue(request, "USERMODEL");
                if (model != null) {
                    if (model.getRole().getName().equals("STUDENT")) {
                        filterChain.doFilter(servletRequest, servletResponse);
                    } else {
                        if (model.getRole().getName().equals("TEACHER")) {
                            response.sendRedirect(request.getContextPath() + "/teacher-home?message=not_permission");
                        }
                    }
                } else {
                    response.sendRedirect(request.getContextPath() + "/dang-nhap?message=not_login");
                }
            } else {
                filterChain.doFilter(servletRequest, servletResponse);
            }
        }
    }

    @Override
    public void destroy() {

    }
}


