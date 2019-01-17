<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html lang="fr">

<head>
<meta charset="utf-8">
<link rel="icon" href="cat_icon.ico">
<title>Connexion</title>
<link href="https://fonts.googleapis.com/css?family=Slabo+27px"
	rel="stylesheet">
<link rel="stylesheet" href="Connexion_The_Animal_Shop.css">
</head>

<body>

	<header class="top">
		<div class="titre">
			<h1>The animal Shop</h1>
			<h2>Page de connexion</h2>
		</div>
	</header>

	<section class="formulaire">
		<form method="post" action="envoi.php">

			<div class="container-col">
				<fieldset>
					<p>
						<label for="email">E-mail :</label> <input type="email"
							id="email-0" name="email" class="Email"
							placeholder="Votre adresse e-mail" required="required"
							tabindex="1" autofocus="autofocus" />
						<!-- <span id="missingEmail"></span> -->
					</p>

					<p>
						<label for="password-0">Mot de passe :</label> <input
							type="password" name="password" id="password-0" class="Password"
							minlength="3" maxlength="250" title="Min/Max: 3/250 caractères."
							placeholder="Votre mot de passe" required="required" tabindex="1">
						<!-- <span id="missingNom"></span> -->
					</p>
				</fieldset>
			</div>

			<fieldset class="submit">
				<p>
					<input type="submit" value="Connexion" id="bouton_envoi" />
				</p>
			</fieldset>
		</form>
	</section>

	<footer>
		<!-- copyright = alt+0169-->
		<h3>
			Alexandre, Clément et Andréa // 2019 © <a href="#">Formation</a>
		</h3>
	</footer>

	<!-- <script>
        var formValid = document.getElementById("bouton_envoi");

        var userEmail = document.getElementById("email");
        var emailValidation = /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
        var missingEmail = document.getElementById("missingEmail");

        var user = document.getElementById("mdp");
        var nomValidation = /^[0-9a-zA-Z]{6}$/;
        var missingMdp = document.getElementById("missingMdp");

        formValid.addEventListener("click", validation1);
        formValid.addEventListener("click", validation2);

        function validation1 (event) {
            if (user.validity.valueMissing) {
                event.preventDefault();
                missingMpd.textContent = "E-mail manquant";
                missingMpd.style.color = "white";
                missingMpd.style.background = "red";
                missingMpd.style.padding = "3px 20px";
                missingMpd.style.borderRadius = "3px";
                missingMpd.style.fontSize = "13px";
                missingMpd.style.fontWeight = "700";
            }

            else if (!emailValidation.test(userEmail.value)) {
                event.preventDefault();
                missingEmail.textContent = "Format de l'email incorrect";
                missingEmail.style.color = "orange";
                missingEmail.style.background = "black";
                missingEmail.style.padding = "3px 20px";
                missingEmail.style.borderRadius = "3px";
                missingEmail.style.fontSize = "13px";
                missingEmail.style.fontWeight = "700";
            }

            else {
                missingEmail.textContent = "";
                missingEmail.style = "none";
            }
        }

        function validation2(event) {
            if (user.validity.valueMissing) {
                event.preventDefault();
                missingNom.textContent = "Mot de passe manquant";
                missingNom.style.color = "white";
                missingNom.style.background = "red";
                missingNom.style.padding = "3px 20px";
                missingNom.style.borderRadius = "3px";
                missingNom.style.fontSize = "13px";
                missingNom.style.fontWeight = "700";
            }
            else if (!nomValidation.test(user.value)) {
                event.preventDefault();
                missingNom.textContent = "Format du mot de passe incorrect";
                missingNom.style.color = "orange";
                missingNom.style.background = "black";
                missingNom.style.padding = "3px 20px";
                missingNom.style.borderRadius = "3px";
                missingNom.style.fontSize = "13px";
                missingNom.style.fontWeight = "700";
            }

            else {
                missingNom.textContent = "";
                missingNom.style = "none";
            }
        } -->

	</script>
</body>
</html>