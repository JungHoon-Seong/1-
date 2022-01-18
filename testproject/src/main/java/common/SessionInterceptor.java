package common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;




public class SessionInterceptor extends HandlerInterceptorAdapter{

	private static final Logger logger = LoggerFactory.getLogger(SessionInterceptor.class);
	
	//로그인을 제외한 다른 페이지에서 세션 여부 체크
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		
		//logger.info("인터셉트 작동확인");
		
		HttpSession session = request.getSession();
		
		//member라는 세션 id가 null일 경우
		if(session.getAttribute("member") == null) {
			//로그인 페이지 이동
			//logger.warn("인터셉트알림! 로그인 세션이 확인되지 않아 로그인 창으로 이동시킴");
			response.sendRedirect("./login");
			//컨트롤러 실행 x
			return false;
		}else {
			return true;
		}
		
	}
	
}
