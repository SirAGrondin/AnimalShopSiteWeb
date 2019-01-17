<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enregistrement</title>
</head>

<body>
    <header class="top">
        <div class="titre">
            <h1>Contact</h1>
            <h2>
                Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque vehicula consequat libero id
                posuere. Pellentesque id nisl viverra, laoreet leo eu, dapibus urna. 
                Paesent ac magna et quam molestie dapibus ac quis risus.</br>
                Pellentesque habitant morbi tristique senectus et netus et malesuada
                fames ac turpis egestas. </h2>
        </div>
    </header>
<section class ="formulaire">
    <form method ="post" action="Enregistrement">
        <div class="container-col">
            <fieldset>
                <p>
                    <label for="nom">Pseudo :</label>
                    <input type="text" id="nom" name="nom"
                    placeholder="Nom" required="required"/>
                    <span id="missingNom"></span>
                </p>
              
                <p>
                    <label for="email">E-mail :</label>
                    <input type="email" id="email" name="email"  placeholder="E-mail" required="required"/> 
                    <span id="missingEmail"></span>
                </p>
                
                <p>
                    <label for="password-0">Mot de Passe :</label>
                    <input type="password" id="password-0" name="password"  placeholder="password" /> 
                </p>
               
                
            </fieldset>

          
    <fieldset class ="submit">
        <p>
            <input type ="submit" value="Inscription" id="bouton_envoi"/>
        </p>
    </fieldset>
    </form>
</section>
<footer>
    <h3><a href="/Accueil">Animal Shop</a></h3>
</footer>

<script>
    var formValid = document.getElementById("bouton_envoi");
    
    var nom = document.getElementById("nom");
    var nomValidation= /^[a-zA-Z ]+$/;
    var missingNom = document.getElementById("missingNom");
    formValid.addEventListener("click",validationNom);

    var email = document.getElementById("email");
    var emailValidation= /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
    var missingEmail = document.getElementById("missingEmail");
    formValid.addEventListener("click",validationEmail);
   
    var telephone = document.getElementById("tel");
    var telephoneValidation= /^[0-9]{10}$/;
    var missingTelephone = document.getElementById("missingTelephone");
    formValid.addEventListener("click",validationTelephone);

    function validationNom(event){
        if(nom.validity.valueMissing){
            event.preventDefault();
            missingNom.textContent='Nom manquant';
            missingNom.style.color="white";
            missingNom.style.background='red';
            missingNom.style.padding='3px 50px';
            missingNom.Style.borderRadius='3px';
            missingNom.stye.fontSize= '25px';
            missingNom.style.fontWeight='700';
        }else if(!nomValidation.test(nom.value)) {
            event.preventDefault();
            missingNom.textContent="Format incorrect";
            missingNom.style.color="white";
            missingNom.style.background='orange';
            missingNom.style.padding='3px 50px';
            missingNom.Style.borderRadius='3px';
            missingNom.stye.fontSize= '25px';
            missingNom.style.fontWeight='700';
        }else {
            missingNom.textContent='';
            missingNom.style='none';
        }
    }
    function validationEmail(event){
        if(email.validity.valueMissing){
            event.preventDefault();
            missingEmail.textContent='Email manquant';
            missingEmail.style.color="white";
            missingEmail.style.background='red';
            missingEmail.style.padding='3px 50px';
            missingEmail.Style.borderRadius='3px';
            missingEmail.stye.fontSize= '30px';
            missingEmail.style.fontWeight='700';
        }else if(!emailValidation.test(email.value)) {
            event.preventDefault();
            missingEmail.textContent="Email incorrect";
            missingEmail.style.color="white";
            missingEmail.style.background='orange';
            missingEmail.style.padding='3px 50px';
            missingEmail.Style.borderRadius='3px';
            missingEmail.stye.fontSize= '30px';
            missingEmail.style.fontWeight='700';
        }else {
            missingEmail.textContent='';
            missingEmail.style='none';
        }
    }
    function validationTelephone(event){
        if(telephone.validity.valueMissing){
            event.preventDefault();
            missingTelephone.textContent='Numéro téléphone manquant';
            missingTelephone.style.color="white";
            missingTelephone.style.background='red';
            missingTelephone.style.padding='3px 50px';
            missingTelephone.Style.borderRadius='3px';
            missingTelephone.stye.fontSize= '30px';
            missingTelephone.style.fontWeight='700';
        }else if(!telephoneValidation.test(telephone.value)) {
            event.preventDefault();
            missingTelephone.textContent="Numéro de téléphone incorrect";
            missingTelephone.style.color="white";
            missingTelephone.style.background='orange';
            missingTelephone.style.padding='3px 50px';
            missingTelephone.Style.borderRadius='3px';
            missingTelephone.stye.fontSize= '30px';
            missingTelephone.style.fontWeight='700';
        }else {
            missingTelephone.textContent='';
            missingTelephone.style='none';
        }
    }
</script>
</body>
</html>