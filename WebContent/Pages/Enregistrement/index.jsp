<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
<%@include file="styleEnregistrement.jsp" %>
</style> 
<title>Inscription</title>
</head>

<body>
    <header class="top">
        <div class="titre">
            <h1>Page d'enregistrement</h1>

        </div>
    </header>
<section class ="formulaire">
    <form>
        <div class="container-col">
            <fieldset>
                    
                <p>
                    <label for="usernam-0">Pseudo :</label>
                    <input type="text" id="username-0" 
                    name="username"
                    placeholder="Pseudonyme"
                    pattern="^[a-zA-Z ]+$"
                    required="required" />
                    <span id="missingNom"></span>
                </p>
              
                <p>
                    <label for="email">E-mail :</label>
                    <input type="email" 
                    id="email" 
                    name="email"  
                    placeholder="utilisateur@mail.com"
                    pattern="^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$"
                    required="required"/> 
                    <span id="missingEmail"></span>
                </p>
                
                <p>
                    <label for="password-0">Mot de Passe :</label>
                    <input type="password" 
                    id="password-0" 
                    name="password"  
                    placeholder="Mot de Passe (4 carac. min)"
                    pattern=" ^[a-zA-Z0-9._-]{4,}+$" 
                    required="required"/>
                    <span id="missingPassword"></span> 
                </p>
               
                 <p>
                    <label for="password-1">Confirmer Mot de Passe :</label>
                    <input type="password" 
                    id="password-1" 
                    name="password"  
                    placeholder="Mot de Passe (4 carac. min)"
                    required="required"
                     /> 
                    <span id="confirmationpassword"></span>
                </p>
                <p id="error"><%= request.getAttribute("errorlogin") %></p>
            </fieldset>

          
    <fieldset class ="submit">
        <label>
            <button type ="submit" value="Inscription" id="bouton_envoi"/>Inscription
        </label>
    </fieldset>
    </form>
</section>
<footer>
    <h3><a href="/AnimalShopSiteWeb/">Animal Shop</a></h3>
</footer>

<script>
    var formValid = document.getElementById("bouton_envoi");
    
    var nom = document.getElementById("nom");
    // var nomValidation= /^[a-zA-Z ]+$/;
    var missingNom = document.getElementById("missingNom");
    formValid.addEventListener("click",validationNom);

    var email = document.getElementById("email");
    // var emailValidation= /^[a-zA-Z0-9._-]+@[a-z0-9._-]{2,}\.[a-z]{2,4}$/;
    var missingEmail = document.getElementById("missingEmail");
    formValid.addEventListener("click",validationEmail);
   
    var password = document.getElementById("password-0");
    // var passwordValidation=  /^[a-zA-Z0-9._-]{4,}+$/;
    var missingPassword = document.getElementById("missingPassword");
    formValid.addEventListener("click",validationPassword);
    
    var passwordbis = document.getElementById("password-1");
    var passwordconfirmation = document.getElementById("confirmationpassword");
    formValid.addEvenListener("click",identiquePassword);

    function validationNom(event){
        event.preventDefault();
        if(nom.validity.valueMissing){
            missingNom.textContent='Pseudonyme manquant';
            missingNom.style.color="white";
            missingNom.style.background='red';
            missingNom.style.padding='3px 80px';
            missingNom.Style.borderRadius='3px';
            missingNom.stye.fontSize= '25px';
            missingNom.style.fontWeight='700';
        // }else if(!nomValidation.test(nom.value)) {
        //     event.preventDefault();
        //     missingNom.textContent="Format incorrect";
        //     missingNom.style.color="white";
        //     missingNom.style.background='orange';
        //     missingNom.style.padding='3px 80px';
        //     missingNom.Style.borderRadius='3px';
        //     missingNom.stye.fontSize= '25px';
        //     missingNom.style.fontWeight='700';
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
            missingEmail.style.padding='3px 80px';
            missingEmail.Style.borderRadius='3px';
            missingEmail.stye.fontSize= '30px';
            missingEmail.style.fontWeight='700';
        // }else if(!emailValidation.test(email.value)) {
        //     event.preventDefault();
        //     missingEmail.textContent="Email incorrect";
        //     missingEmail.style.color="white";
        //     missingEmail.style.background='orange';
        //     missingEmail.style.padding='3px 80px';
        //     missingEmail.Style.borderRadius='3px';
        //     missingEmail.stye.fontSize= '30px';
        //     missingEmail.style.fontWeight='700';
        // }else {
            missingEmail.textContent='';
            missingEmail.style='none';
        }
    }
    function validationPassword(event){
        if(password.validity.valueMissing){
            event.preventDefault();
            missingPassword.textContent='Mot de passe manquant';
            missingPassword.style.color="white";
            missingPassword.style.background='red';
            missingPassword.style.padding='3px 80px';
            missingPassword.Style.borderRadius='3px';
            missingPassword.stye.fontSize= '30px';
            missingPassword.style.fontWeight='700';
        // }else if(!passwordValidation.test(password.value)) {
        //     event.preventDefault();
        //     missingPassword.textContent="Mot de passe incorrect";
        //     missingPassword.style.color="white";
        //     missingPassword.style.background='orange';
        //     missingPassword.style.padding='3px 80px';
        //     missingPassword.Style.borderRadius='3px';
        //     missingPassword.stye.fontSize= '30px';
        //     missingPassword.style.fontWeight='700';
        // }else {
            missingPassword.textContent='';
            missingPassword.style='none';
        }
    }
    
    function identiquePassword(event){
            if(passwordbis.validity.valueMissing){
             event.preventDefault();
            passwordconfirmation.textContent='Mot de passe manquant';
            passwordconfirmation.style.color="white";
            passwordconfirmation.style.background='red';
            passwordconfirmation.style.padding='3px 80px';
            passwordconfirmation.Style.borderRadius='3px';
            passwordconfirmation.stye.fontSize= '30px';
            passwordconfirmation.style.fontWeight='700';
           }else if (passwordbis!= password){
            event.preventDefault();
            passwordconfirmation.textContent='Mot de passe non identique';
            passwordconfirmation.style.color="white";
            passwordconfirmation.style.background='red';
            passwordconfirmation.style.padding='3px 80px';
            passwordconfirmation.Style.borderRadius='3px';
            passwordconfirmation.stye.fontSize= '30px';
            passwordconfirmation.style.fontWeight='700';
           }else {
            passwordconfirmation.textContent='';
            passwordconfirmation.style='none';
        }
    }
</script>
</body>
</html>