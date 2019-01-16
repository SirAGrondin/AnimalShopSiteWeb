<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Animal Shop</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">
<link rel="stylesheet" href="Accueil.css">
</head>

<body>
	<header>
		<h1 id="titre">Animal Shop : Le lieu pour réaliser vos rêves</h1>

		<div id="image">
			<img src="http://www.w3sh.com/wordpress/wp-content/uploads/2011/05/animal-star-wars-sabre-fights-12.jpg" alt="ecureuil jedi">
		</div>

		<div class="haut_droite">
			<nav class="menu">
				<ul>
					<li><a href="#">Accueil</a></li>
					<li><a href="#">Qui sommes-nous</a></li>
					<li><a href="/AnimalShopSiteWeb/connexion">Connexion</a></li>
					<li><a href="#">Service</a></li>
					<li><a href="#">Listes d'animaux</a></li>
					<li><a href="#">Contact</a></li>
				</ul>
			</nav>
		</div>
	</header>
		<section id="banniere">
				<img src="Images/Muppets-Most-Wanted4.jpg" alt="banniere_animalShop"/>
				
		</section>
		<section id="presentation">
				<article class="animaux">
					<div class="cadre">
					<img src="http://www.etourisme.info/wp-content/uploads/2017/10/StatlerWaldorf.jpg" alt="old_people" />
				</div>
					<div class="bloc_texte">
						<h1>
							Les seniors peuvent-ils apprécier la série ?
						</h1>
						<p class="texte">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam volutpat sem in massa varius, ut pulvinar nibh tincidunt. Nulla facilisi.
								Etiam nec condimentum diam. Ut eleifend aliquam ex. Nam luctus dignissim risus ut pulvinar.
								Vivamus sit amet risus nec est accumsan accumsan ut a nulla. Donec quis massa arcu.
								Etiam tempor arcu a bibendum luctus. Nulla eros tortor, aliquam vel lorem a, ultrices lacinia arcu.
								In mattis pretium dictum. Nullam porta tortor sodales turpis porttitor, at eleifend leo sollicitudin. Quisque sit amet
								ultricies arcu, a pretium metus. Cras vitae justo pulvinar, posuere mi eu, pulvinar eros. Etiam id convallis velit.
								Sed blandit augue id lorem tempus laoreet. Duis ultricies scelerisque quam quis faucibus. (rempart).
						</p>
						<p class="publication">
								Par <a href="#">Kermit</a> le 10 Janvier 2019 en <a href="#">Exclusivité</a>.
						</p>
						
					</div>
				</article>
		
				<section id="presentation">
						<article class="animaux">
					<img src="https://vignette.wikia.nocookie.net/muppet/images/a/a8/The_Muppets_2015_opening_01.jpg/revision/latest?cb=20150923110757" alt="vieille_ville"/>
				</div>
					<div class="bloc_texte">
						<h1>
							Comment améliorer notre lieu de travail (d'après le Muppet Show) ?
						</h1>
						<p class="texte">
								Lorem ipsum dolor sit amet, consectetur adipiscing elit.
								Etiam volutpat sem in massa varius, ut pulvinar nibh tincidunt. Nulla facilisi.
								Etiam nec condimentum diam. Ut eleifend aliquam ex. Nam luctus dignissim risus ut pulvinar.
								Vivamus sit amet risus nec est accumsan accumsan ut a nulla. Donec quis massa arcu.
								Etiam tempor arcu a bibendum luctus. Nulla eros tortor, aliquam vel lorem a, ultrices lacinia arcu.
								In mattis pretium dictum. Nullam porta tortor sodales turpis porttitor, at eleifend leo sollicitudin. Quisque sit amet
								ultricies arcu, a pretium metus. Cras vitae justo pulvinar, posuere mi eu, pulvinar eros. Etiam id convallis velit.
								Sed blandit augue id lorem tempus laoreet. Duis ultricies scelerisque quam quis faucibus.(vieille ville)
						</p>
						<p class="publication">
								Par <a href="#">Kermit</a> le 10 Janvier 2019 en <a href="#">Exclusivité</a>.
						</p>
						
					</div>
				</article>
			</section>
			<footer>
					<div class="bas">
						<div id="date">
							<%= new java.util.Date().toString().substring(8, 11)%>
							<%= new java.util.Date().toString().substring(4, 7)%>
							</div>
							
							<div id="heure">
							<%= new java.util.Date().toString().substring(11, 16)%>
							</div>
							
							<div id="compteur">
							<%! int compteur=0;%>
							<% compteur ++;%>
							Vous �tes le visiteur n�<%=compteur %> .
							</div>
						</div>
					<div class="bas">   
						<h2> 
							Recent Posts
						</h2>
						<ul>
							<li><a href="#">Shopping Till The End</a></li>
							<li><a href="#">Future Final Destination</a></li>
							<li><a href="#">Happy Life Above The Other Rainbow Bridge</a></li>
							<li><a href="#">Some Peaceful Place</a></li>
							<li><a href="#">My Precious One</a></li>
						</ul>
					</div>
					<div class="bas">
						<h2>
							Tags
						</h2>
						<a class="tags" href="#">exclusive</a>
						<a class="tags" href="#">headline</a>
						<a class="tags" href="#">latest</a>
						<a class="tags" href="#">popular</a>
						<a class="tags" href="#">slider</a>
					</div>
				</footer>	
	
</body>

</html>