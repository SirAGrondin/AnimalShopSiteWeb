package fr.agrondin.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.agrondin.objects.DatabaseWebUser;
import fr.agrondin.objects.PostNamesChecker;
import fr.agrondin.objects.WebUser;
import fr.agrondin.objects.LoginPostName;

/**
 * Servlet implementation class PageConnexionServlet
 */
@WebServlet("/Connexion")
public class PageConnexionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String loginErrorMessage = "";

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageConnexionServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (session.getAttribute(LoginPostName.USERNAME.getName()) != null) {
			// Si une session existe, on redirige sur une autre page.
			response.sendRedirect("/AnimalShopSiteWeb/EspaceMembre");
		} else {
			// Sinon, on affiche la page d'enregistrement.
			this.getServletContext().getRequestDispatcher("/Pages/Connexion/").forward(request, response);
		}	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Préciser les champs requis envoyés par le formulaire.
				String[] requiredNames = { LoginPostName.USERNAME.getName(), LoginPostName.PASSWORD.getName(),
						LoginPostName.STAYCO.getName() };

				String username = "", password = "";

				// Vérifier la présence de ces champs requis dans la requete.
				if (PostNamesChecker.areNamesFoundInPostRequest(request, requiredNames)) {
					username = request.getParameter(LoginPostName.USERNAME.getName());
					password = request.getParameter(LoginPostName.PASSWORD.getName());

					// Vérifier existence du potentiel utilisateur.
					WebUser user = DatabaseWebUser.selectByPseudoOrEmail(username);
					if (user != null) {
						if (user.getPassword().equals(password)) {
							HttpSession session = request.getSession();
							session.setAttribute(LoginPostName.USERNAME.getName(), username);
							session.setAttribute(LoginPostName.PASSWORD.getName(), password);
							response.sendRedirect("/ServletEtJSP/EspaceMembre");
						} else {
							this.loginErrorMessage = "Le mot de passe est incorrect.";
							request.setAttribute("errorLogin", this.loginErrorMessage);
							doGet(request, response);
						}

					} else {
						this.loginErrorMessage = "Le nom d'utilisateur ou l'adresse e-mail est introuvable.";
						request.setAttribute("errorLogin", this.loginErrorMessage);
						doGet(request, response);
					}

				} else {
					doGet(request, response);
				}
	}

}
