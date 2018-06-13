//package com.tianmu.openplatform;
//
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
//import org.slf4j.Logger;
//import org.slf4j.LoggerFactory;
//import org.springframework.util.AntPathMatcher;
//import org.springframework.web.servlet.HandlerInterceptor;
//import org.springframework.web.servlet.ModelAndView;
//
//public class MyInterceptor implements HandlerInterceptor {
//
//	private static final Logger logger = LoggerFactory.getLogger(MyInterceptor.class);
//
//	private final AntPathMatcher pathMatcher = new AntPathMatcher();
//
//	@Override
//	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
//
//		String requestPath = request.getRequestURI();// 请求路径
//		String array[] = new String[] { "/contracts/**", "/admin/**", "/sys/**", "/user/**" };
//
//		String ignor[] = new String[] { "/admin/getLogin", "/admin/", "/admin/login","/admin/doLogout" };
//		for (String temp : ignor) {
//			if (requestPath.equals(temp)) {
//				return true;
//			}
//		}
//		if (pathMatcher.match("/admin/**", requestPath) ) {
//			return true;
//		}
//		for (String patternPath : array) {
//			if (pathMatcher.match(patternPath, requestPath)) {
//				Object tempObj = request.getSession(true).getAttribute("adminUser");
//				logger.info("preHandle >>>>>>>>> tempObj == " + tempObj);
//				if (tempObj == null) {
//					response.sendRedirect("/admin/getLogin");
//					return false;
//				}
//			}
//		}
//		return true;
//	}
//
//	@Override
//	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
//	}
//
//	@Override
//	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
//
//	}
//}