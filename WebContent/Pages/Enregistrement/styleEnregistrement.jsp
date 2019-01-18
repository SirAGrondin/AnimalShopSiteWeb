<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style type="text/css">
body{
    margin:0;
    padding:0;
    font-family: 'Teko', sans-serif;
    cursor: url('https://cdn1.iconfinder.com/data/icons/cute-corgi-dog-emoticon/595/CUTE_CORGI_DOG_EMOTICON-15-128.png'), auto;

   
}
header.top{
    background:url("https://www.freepik.com/blog/wp-content/uploads/2017/05/03a.gif") repeat ;
    width:100%;
    padding: 100px 0px;

}
header.top .titre{
    max-width: 1150px;
    margin: 0 auto;
    padding: 0 20px;
}
header.top .titre h1{
    font-size: 30px;
    color:  #000000    ;
    font-weight: 700;
}
header.top .titre h2{
    font-size: 20px;
    color:  #000000  ;
    font-weight: 400;
    word-wrap: break-word;
}

/*** FORMULAIRE ***/
.formulaire{
    background: #ff7b66  ;
    margin: 0;
    padding: 50px 0 40px 0px;
    width: 100%;
}
form{
    max-width: 920px;
    margin: 0 auto;
}
form .container-col{
    display: flex;
    flex-wrap: wrap;
}
fieldset{
    border:none;
}
input, textarea{
    width: 96%;
    padding: 10px;
    border-radius: 5px;
    border: none;
    margin-top: 5px;
    color:  #000000  ;
    font-size: 14px;
}
.formulaire .container-col fieldset p {
    color:  #ffffff  ;
    font-size: 20px;
    font-weight: normal;
    text-decoration: underline;

}
form .container-col fieldset{
    flex:1;
}
form .container-col fieldset.submit{
    flex:2;
}
form label{
    display: block;
    padding:0;
    text-align: left;
}
form textarea {
    height: 260px;
    resize:none;
}
fieldset p{
    margin: 10px 0;
    font-size: 14px;
    font-weight:290;
    color: #000000;
    padding-bottom: 0px;
}
form .submit{
    text-align: right;
}
.submit input{
    background: transparent;
    border: 1px solid;
    color: #ffffff  ;
    font-size: 15px;
    text-transform: uppercase;
    width: 20%;
}
.submit input:hover{
    background: #ffffff;
    transition: all 0.5s ease 0.1s;
    color:#000000;
    cursor: url('https://cdn1.iconfinder.com/data/icons/shiba-inu-2-filled/64/Shiba-07-128.png'), auto;
}
footer{
    background:url("https://www.freepik.com/blog/wp-content/uploads/2017/05/03a.gif") repeat ;
    margin:0;
    padding: 10px 0;
}
footer h3, footer h3 a{
    color: #000000 ;
    font-size: 20px;
    font-weight: 300;
    margin: 0 auto;
    max-width: 1150px;
    text-align: center;
    width: 100%;
}

footer h3 a {
    text-decoration: none;
    font-weight: bold;
    transition: all 0.2s ease 0.1s;
}
footer h3 a:hover{
    color: #ff7b66;
    cursor: url('https://cdn1.iconfinder.com/data/icons/shiba-inu-2-filled/64/Shiba-07-128.png'), auto;

}
@media screen and (max-width: 480px){
    .submit input{
        width:100%;
    }
}

</style>
</head>
<body>

</body>
</html>