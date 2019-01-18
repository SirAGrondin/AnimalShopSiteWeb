<%@page import="fr.agrondin.objects.LoginPostName"%>
<%@page import="fr.agrondin.objects.DatabaseWebUser"%>
<%@page import="fr.agrondin.objects.Role"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EspaceMembre</title>
</head>
<body>
	<h1>Il est des n�tres, il a bu son verre comme les autres !</h1>

	<!-- <a href="/AnimalShopSiteWeb/Gestion">Gestion</a> -->
	<a href="/AnimalShopSiteWeb/Deconnexion">D�connexion</a>

	<h2>Changer mes informations</h2>

	<form method="POST" action="/AnimalShopSiteWeb/EspaceMembre">

		<!-- Nom d'utilisateur -->
		<fieldset>
			<p>
				Votre nom d'utilisateur :
				<%=session.getAttribute(LoginPostName.USERNAME.getName())%></p>


			<p>
				<label for="email">E-mail :</label> <input type="email" id="email"
					name="email" placeholder="utilisateur@mail.com"
					pattern="^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$"
					required="required" tabindex="1" />
			</p>

			<p>
				<label for="password-0">Mot de Passe :</label> <input
					type="password" id="password-0" name="password"
					placeholder="Mot de Passe (4 carac. min)"
					pattern=" ^[a-zA-Z0-9._-]{4,}+$" required="required" tabindex="1" />
			</p>
			
			<p> <%= request.getAttribute("updateMessage") %></p>
		</fieldset>

		<!-- Changer les informations -->
		<fieldset>
			<button type="submit">
				Envoyer</label>
		</fieldset>

		<%
			if (session.getAttribute(LoginPostName.ROLE.getName()).toString().equals(Role.ADMIN.getName())) {
		%>
		<fieldset>
			<button>
				<a href="/AnimalShopSiteWeb/Gestion">Gestion du stock</a>
			</button>
		</fieldset>
		<%
			}
		%>



	</form>
</body>
</html>