package kr.re.hep.common;

import java.util.Date;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.re.hep.member.MemberVO;

public class SessionInterceptor extends HandlerInterceptorAdapter {
	@Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		//임시로그인
		//request.getSession().setAttribute("memberVO", new MemberVO(1, "윤수연", "yoonsy@hep.re.kr", "123456", "winry", null, false, "000.000.000.000", new Date(), new Date(), 0, 0));
		
		StringBuffer mainPage = request.getRequestURL();
		MemberVO member = (MemberVO) request.getSession().getAttribute("memberVO");
		Boolean login = mainPage.toString().contains("/member/index.do");
		Boolean register = mainPage.toString().contains("/member/register.do");
		Boolean resources = mainPage.toString().contains("/resources/");
		
//		if (member == null) {
//			if (!login && !register && !resources){
//				response.sendRedirect(request.getContextPath() +"/member/index.do");
//				return false;
//			}
//		}
//		if (!login && !register) {
//			if (member == null){
//				response.sendRedirect(request.getContextPath() +"/member/index.do");
//				return false;
//			} 
//		}
		return true;
	}
}