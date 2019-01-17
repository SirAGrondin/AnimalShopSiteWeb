<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>EspaceMembre</title>
</head>
<body>
<h1>Il est des nôtres, il a bu son verre comme les autres !</h1>


                <h2>Changer mes informations</h2>

                <form method="POST" action="Changer_information">

                    <!-- Nom d'utilisateur -->
                    <fieldset>
                        <label for="new_username-0">Nouveau nom d'utilisateur</label>
                        <input type="text" name="new_username" class="user" id="new_username-0" minlength="3" maxlength="30" pattern="^[A-Z][a-z ]{2,29}$" title="Nom d'utilisateur" placeholder="Nouveau nom d'utilisateur" required="required" tabindex="1" autofocus="autofocus">
                    </fieldset>

                    <!-- Mot de passe -->
                    <fieldset>
                        <label for="password-0">Nouveau mot de passe</label>
                        <input type="password" name="new_password" class="password" id="new_password-0" minlength="8" maxlength="250" title="Mot de passe" placeholder="Nouveau mot de passe" required="required" tabindex="1">
                    </fieldset>
                    
                    <!-- Changer les informations -->
                    <fieldset>
                        <button type="submit">Envoyer</label>
                    </fieldset>
                    
                </form>
</body>
</html>