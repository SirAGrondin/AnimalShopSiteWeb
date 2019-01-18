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
<<<<<<< HEAD
<h1>Il est des nôtres, il a bu son verre comme les autres !</h1>

				<a href="/AnimalShopSiteWeb/Gestion">Gestion</a>
				<a href="/AnimalShopSiteWeb/Deconnexion">Déconnexion</a>

                <h2>Changer mes informations</h2>

                <form method="POST" action="/AnimalShopSiteWeb/EspaceMembre">

                    <!-- Nom d'utilisateur -->
                    <fieldset>
                        <label for="username-0">Nom d'utilisateur</label>
                        <input type="text" name="username" class="user" id="username-0" minlength="3" maxlength="30" pattern="^[A-Z][a-z ]{2,29}$" title="Nom d'utilisateur" placeholder="Nom d'utilisateur" required="required" tabindex="1" autofocus="autofocus">
                    </fieldset>
                    
                    <!-- Email -->
                    <fieldset>
                        <label for="email-0">Nouvel Email</label>
                        <input type="email" name="email" class="user" id="email-0" title="E-mail" placeholder="Nouvel E-mail" required="required" tabindex="1" autofocus="autofocus">
                    </fieldset>

                    <!-- Mot de passe -->
                    <fieldset>
                        <label for="password-0">Nouveau mot de passe</label>
                        <input type="password" name="password" class="password" id="password-0" minlength="8" maxlength="250" title="Mot de passe" placeholder="Nouveau mot de passe" required="required" tabindex="1">
                    </fieldset>
                    
                    <!-- Changer les informations -->
                    <fieldset>
                        <button type="submit">Envoyer</label>
                    </fieldset>
                    
                </form>
=======
	<h1>Il est des nï¿½tres, il a bu son verre comme les autres !</h1>

	<!-- <a href="/AnimalShopSiteWeb/Gestion">Gestion</a> -->
	<a href="/AnimalShopSiteWeb/Deconnexion">Dï¿½connexion</a>

	<h2>Changer mes informations</h2>

	<form method="POST" action="Changer_information">

		<!-- Nom d'utilisateur -->
		<fieldset>
			<label for="username-0">Nom d'utilisateur</label> <input type="text"
				name="username" class="user" id="username-0" minlength="3"
				maxlength="30" pattern="^[A-Z][a-z ]{2,29}$"
				title="Nom d'utilisateur" placeholder="Nom d'utilisateur"
				required="required" tabindex="1" autofocus="autofocus">
		</fieldset>

		<!-- Email -->
		<fieldset>
			<label for="email-0">Nouvel Email</label> <input type="email"
				name="email" class="user" id="email-0" title="E-mail"
				placeholder="Nouvel E-mail" required="required" tabindex="1"
				autofocus="autofocus">
		</fieldset>

		<!-- Mot de passe -->
		<fieldset>
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
>>>>>>> 367cdb2e594d2bb98beabc41d8f85b78ed2b34c8
</body>
</html>