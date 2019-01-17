package fr.agrondin.servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import fr.agrondin.objects.DatabaseWebUser;
import fr.agrondin.objects.LoginPostName;
import fr.agrondin.objects.PostNamesChecker;
import fr.agrondin.objects.WebUser;

/**
 * Servlet implementation class PageEnregistrementServlet
 */
@WebServlet("/Enregistrement")
public class PageEnregistrementServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private String loginErrorMessage="";

       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PageEnregistrementServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// Vérifier la présence d'une session.
				HttpSession session = request.getSession();
				if(session.getAttribute(LoginPostName.USERNAME.getName()) !=null) {
					response.sendRedirect("/AnimalShopSiteWeb/EspaceMembre");
					return;
					// Si une session existe, on redirige sur une autre page.
				}
				// Si non, on affiche la page de formulaire/connexion.
				this.getServletContext().getRequestDispatcher("/Pages/Enregistrement/").forward(request, response);
			}

			/**
			 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
			 */
			
			protected void doPost(HttpServletRequest request, HttpServletResponse response)
					throws ServletException, IOException {
				
				// Préciser les champs requis envoyés par le formulaire
				String[] requiredNames = { LoginPostName.USERNAME.getName(), LoginPostName.PASSWORD.getName(),
						LoginPostName.STAYCO.getName() };
				String username = "", password = "";

				// Vérifier la présence de ces champs requis dans la requête
				if (PostNamesChecker.areNamesFoundInPostRequest(request, requiredNames)) {
					username = request.getParameter(LoginPostName.USERNAME.getName());
					password = request.getParameter(LoginPostName.PASSWORD.getName());

					// Vérifier l'existance du potentiel utilisateur
					WebUser user = DatabaseWebUser.selectByPseudoOrEmail(username);
					if (user != null) {
						// Vérifier son mot de passe
						if (user.getPassword().equals(password)) {
							HttpSession session = request.getSession();
							session.setAttribute(LoginPostName.USERNAME.getName(), username);
							session.setAttribute(LoginPostName.PASSWORD.getName(), password);
							response.sendRedirect("/AnimalShopSiteWeb/EspaceMembre");
						} else {
							this.loginErrorMessage = "Le mot de passe est incorrect.";
							request.setAttribute("errorLogin", this.loginErrorMessage);
							doGet(request, response);
						}
					} else {
						this.loginErrorMessage = "Le pseudonyme ou l'adresse email est incorrect.";
						request.setAttribute("errorLogin", this.loginErrorMessage);
						doGet(request, response);
					}
				} else {
					doGet(request, response);
				}
			}
		}
