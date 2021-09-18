package ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginTest")
public class LoginTest extends HttpServlet {
	    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		String id = request.getParameter("user_id");
		
		if(id != null && id.length() != 0) {
			if(id.equals("admin")) {
				out.print("<html>");
				out.print("<body>");
				out.print("<font size='12'> 관리자로 로그인 하셨습니다 </font>");				
				out.print("<br>");
				out.print("<input type=button value='회원 관리' />");
				out.print("<br>");
				out.print("<input type=button value='회원 삭제' />");
				out.print("</html>");
				out.print("</body>");	
			} else {
				out.print("<html>");
				out.print("<body>");
				out.print(id + "님 로그인 하셨습니다");
				out.print("</html>");
				out.print("</body>");
			}
		} else {
			out.print("<html>");
			out.print("<body>");
			out.print("아이디를 입력하세요");
			out.print("<br>");
			out.print("<a href='http://localhost:8080/pro06/test/login.html'> 로그인 창으로 이동 </a>");
			out.print("</html>");
			out.print("</body>");
		}		
	}

}
