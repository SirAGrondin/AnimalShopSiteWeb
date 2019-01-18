package fr.agrondin.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.agrondin.objects.LoginPostName;
import fr.agrondin.objects.DatabaseWebUser;
import fr.agrondin.objects.PostNamesChecker;
import fr.agrondin.objects.WebUser;

/**
 * Servlet implementation class PageEspaceMembreServlet
 */
@WebServlet("/EspaceMembre")
public class PageEspaceMembreServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String updateMessage = "";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageEspaceMembreServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// v�rifier la pr�sence d'une session
		HttpSession session = request.getSession();
		
		// si il n'y a pas de session, on redirige vers la page de connexion
		if (session.getAttribute(LoginPostName.USERNAME.getName()) == null) {
			this.getServletContext().getRequestDispatcher("/Pages/Connexion/").forward(request, response);
		}
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		// R�cup�rer la session
		HttpSession session = request.getSession();
		
		// Pr�ciser les champs requis envoy�s par le formulaire
		String[] requiredNames = { LoginPostName.EMAIL.getName(),LoginPostName.PASSWORD.getName() };
		String username = (String) session.getAttribute(LoginPostName.USERNAME.getName()), newEmail="", newPassword = "";
		
		// V�rifier la pr�sence de ces champs requis dans la requ�te
		if (PostNamesChecker.areNamesFoundInPostRequest(request, requiredNames)) {
			newEmail = request.getParameter(LoginPostName.EMAIL.getName());
			newPassword = request.getParameter(LoginPostName.PASSWORD.getName());
			// Op�rer les modifications
			DatabaseWebUser.update(username, newEmail, newPassword);
			// Pr�venir utilisateur que la modif a �t� faite
			this.updateMessage = "La modification de vos informations a bien �t� faite. Hourra.";
			request.setAttribute("updateMessage", this.updateMessage);
			doGet(request, response);		
		}

		
	}

}
