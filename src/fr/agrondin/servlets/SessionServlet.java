package fr.agrondin.servlets;

import java.io.IOException;
import java.time.Instant;
import java.time.ZoneId;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SessionServlet
 */
@WebServlet("/Session")
public class SessionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SessionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		response.setContentType("text/html");
		response.getWriter().append(session.getId());
		String user = (String)session.getAttribute("username");
				
		DateTimeFormatter dtf = new DateTimeFormatterBuilder().toFormatter();
		String createDateFormated=Instant.ofEpochMilli(session.getCreationTime()).atZone(ZoneId.systemDefault()).toLocalDateTime().toString();
		String currentDateFormated=Instant.ofEpochMilli(session.getLastAccessedTime()).atZone(ZoneId.systemDefault()).toLocalDateTime().toString();
		


		if (user != null) {
			response.getWriter().append("<h3>Bonjour " + session.getAttribute("username") + "</h3>");
			response.getWriter().append("<br/> \n\r");
			response.getWriter().append("Tu es connecté(e)");
			response.getWriter().append("<br/> \n\r");
			response.getWriter().append("Ta session a déuté le : "+ createDateFormated);
			response.getWriter().append("<br/> \n\r");
			response.getWriter().append("Ta session dure depuis le : "+currentDateFormated);
			response.getWriter().append("<br/> \n\r");

		}else {
			response.getWriter().append("Tu n'es pas connecté(e)...");
			String anonymousUser ="Anonymous";
			session.setAttribute("username", anonymousUser);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
