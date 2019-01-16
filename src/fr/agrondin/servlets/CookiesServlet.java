package fr.agrondin.servlets;

import java.io.IOException;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CookiesServlet
 */
@WebServlet("/Cookies")
public class CookiesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CookiesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		Cookie[] allCookies = request.getCookies();
		if(allCookies !=null ) {
		for (int index = 0; index < allCookies.length; index++) {
				Cookie cookie = allCookies[index];
				response.getWriter().append("Nom : " +cookie.getName());
				response.getWriter().append("<br/> \n\r");
				response.getWriter().append("Valeur : "+ cookie.getValue());
				response.getWriter().append("<br/> \n\r");
				response.getWriter().append("Expire : " +cookie.getMaxAge());
				response.getWriter().append("<br/> \n\r");
				cookie.setMaxAge(0);
				response.addCookie(cookie);
			}
		}else {
			response.getWriter().append("Pas de cookie.");
			Cookie aNewCookie=new Cookie("DATE_COOKIE",new Date().toString());
			aNewCookie.setMaxAge(60*60*24*7*4*10);//Cookie vit 60s->1h->1j->1semaine->4semaine(1mois)->10mois 
			response.addCookie(aNewCookie);
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
