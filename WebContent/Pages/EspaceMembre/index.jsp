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

		<!-- Email -->
		<fieldset>
				<%= session.getAttribute(LoginPostName.EMAIL.getName()) %>
				<label for="email-0">Nouvel Email</label> <input type="email"
				name="email" class="email" id="email-0" title="E-mail"
				placeholder="Nouvel E-mail" required="required" tabindex="1"
				autofocus="autofocus">
		</fieldset>

		<!-- Mot de passe -->
		<fieldset>
			<%= session.getAttribute(LoginPostName.PASSWORD.getName()) %>
			<label for="password-0">Nouveau mot de passe</label> <input
				type="password" name="password" class="password" id="password-0"
				minlength="8" maxlength="250" title="Mot de passe"
				placeholder="Nouveau mot de passe" required="required" tabindex="1">
		</fieldset>

		<!-- Changer les informations -->
		<fieldset>
			<button type="submit">
				Envoyer</label>
		</fieldset>

		<% if (Role.ADMIN.getId() == 1){ %>
		<fieldset>
			<button>
				<a href="/AnimalShopSiteWeb/Gestion">Gestion du stock</a>
			</button>
		</fieldset>
		<%}%>



	</form>
</body>
</html>