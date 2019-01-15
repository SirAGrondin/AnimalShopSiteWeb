<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Le meilleur site du monde</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="Accueil.css">
</head>

<body>
	<header>
		<h1>Bienvenue sur le meilleur site du monde</h1>
		
		<div id="image">
		<img src="http://www.w3sh.com/wordpress/wp-content/uploads/2011/05/animal-star-wars-sabre-fights-12.jpg" alt="écureuil jedi">
		
		<a href="#">Connexion</a>
		</div>
		
		<div id="date">
		<%= new java.util.Date().toString().substring(8, 11)%>
		<%= new java.util.Date().toString().substring(4, 7)%>
		</div>
		
		<div id="heure">
		<%= new java.util.Date().toString().substring(11, 16)%>
		</div>
	</header>
</body>

</html>