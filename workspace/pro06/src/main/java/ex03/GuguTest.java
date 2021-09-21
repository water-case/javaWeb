package ex03;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/guguTest")
public class GuguTest extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out = response.getWriter();
		
		String dan = request.getParameter("dan");
		out.print("<html>");
		out.print("<body>");
		out.print("<table boder=1 width=800 align=center>");
		out.print("<tr align=center bgcolor=#ffff66>");
		out.print("<th colspan=2>" + dan + "단 출력 <th>");
		out.print("</tr>");
		for(int i=1; i<=9; i++) {
			out.print("<tr align=center>");
			out.print("<td width=400>" + dan + "X" + i + "</td>");
			out.print("<td width=400>" + Integer.parseInt(dan)*i  + "</td>");
			out.print("</tr>");
		}		
			
		out.print("</table>");
		out.print("</body>");
		out.print("</html>");
	}

}
