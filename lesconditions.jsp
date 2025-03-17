<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>

<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>
Exemple :</br>
A = 10</br>
B = 20</br>
C = 15</br>
Oui C est compris entre A et B</p>

<form action="#" method="post">
<p>Saisir la valeur A : <input type="number" name="valeurA" required></p>
<p>Saisir la valeur B : <input type="number" name="valeurB" required></p>
<p>Saisir la valeur C : <input type="number" name="valeurC" required></p>
<p><input type="submit" value="Vérifier"></p>   
</form>

<%-- Récupération des valeurs --%>
    <% String valeurA = request.getParameter("valeurA"); %>
    <% String valeurB = request.getParameter("valeurB"); %>
    <% String valeurC = request.getParameter("valeurC"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeurA != null && valeurB != null && valeurC != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeurA = Integer.parseInt(valeurA); %>
        <% int intValeurB = Integer.parseInt(valeurB); %>
        <% int intValeurC = Integer.parseInt(valeurC); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if ((C > A && C < B) || (C > B && C < A)) { %>
            <p>Oui, C est compris entre A et B.</p>
        <% } else if (intValeurA < intValeurB) { %>
            <p>Valeur A est inférieure à Valeur B.</p>
        <% } else { %>
            <p>Valeur A est égale à Valeur B.</p>
        <% } %>
   
    

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<% } %>
<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
