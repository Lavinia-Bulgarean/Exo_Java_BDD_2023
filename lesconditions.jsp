<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
<head>
<title>les conditions</title>
</head>
<body bgcolor=white>
<h1>Exercices sur les conditions</h1>
<form action="#" method="post">
    <p>Saisir la valeur 1 : <input type="text" id="inputValeur" name="valeur1">
    <p>Saisir la valeur 2 : <input type="text" id="inputValeur" name="valeur2">
    <p><input type="submit" value="Afficher">
</form>
<%-- Récupération des valeurs --%>
    <% String valeur1 = request.getParameter("valeur1"); %>
    <% String valeur2 = request.getParameter("valeur2"); %>

    <%-- Vérification de la condition entre les deux valeurs --%>
    <% if (valeur1 != null && valeur2 != null) { %>
        <%-- Conversion des valeurs en entiers pour la comparaison --%>
        <% int intValeur1 = Integer.parseInt(valeur1); %>
        <% int intValeur2 = Integer.parseInt(valeur2); %>
        
        <%-- Condition if pour comparer les valeurs --%>
        <% if (intValeur1 > intValeur2) { %>
            <p>Valeur 1 est supérieure à Valeur 2.</p>
        <% } else if (intValeur1 < intValeur2) { %>
            <p>Valeur 1 est inférieure à Valeur 2.</p>
        <% } else { %>
            <p>Valeur 1 est égale à Valeur 2.</p>
        <% } %>
   
    
<h2>Exercice 1 : Comparaison 1</h2>
<p>Ecrire un programme qui demande à l'utilisateur de saisir 3 valeurs (des chiffres),</br>
A, B et C et dites nous si la valeur de C est comprise entre A et B.</br>

<%-- Formulaire pour la comparaison des valeurs --%>
    <form action="#" method="post">
        <p>Saisir la valeur A : <input type="number" name="valeurA" required></p>
        <p>Saisir la valeur B : <input type="number" name="valeurB" required></p>
        <p>Saisir la valeur C : <input type="number" name="valeurC" required></p>
        <p><input type="submit" value="Vérifier"></p>
    </form>

    <%-- Récupération des valeurs A, B et C --%>
    <% 
        String valeurA = request.getParameter("valeurA");
        String valeurB = request.getParameter("valeurB");
        String valeurC = request.getParameter("valeurC");

        if (valeurA != null && valeurB != null && valeurC != null) { 
           try {
            int A = Integer.parseInt(valeurA);
            int B = Integer.parseInt(valeurB);
            int C = Integer.parseInt(valeurC);

            if ((C > A && C < B) || (C > B && C < A)) { 
    %>
                <p>Oui, C est compris entre A et B.</p>
    <% 
            } else { 
    %>
                <p>Non, C n'est pas compris entre A et B.</p>
    <% 
            } 
        } catch (NumberFormatException e) {
    %>
            <p>Veuillez entrer des valeurs numériques valides pour A, B et C.</p>
    <% 
            }
        }
    %>

<h2>Exercice 2 : Pair ou Impair ?</h2>
<p>Écrivez un programme pour vérifier si un nombre est pair ou impair en utilisant une structure if</p>

<%-- Formulaire pour vérifier si un nombre est pair ou impair --%>
<form action="#" method="post">
    <p>Saisir un nombre : <input type="number" name="nombre" required></p>
    <p><input type="submit" value="Vérifier"></p>
</form>

<%-- Récupération du nombre et vérification pair ou impair --%>
<% 
    String nombreStr = request.getParameter("nombre");

    if (nombreStr != null) { 
       try {
            int nombre = Integer.parseInt(nombreStr);

            if (nombre % 2 == 0) { 
    %>
            <p>Le nombre <%= nombre %> est pair.</p>
    <% 
        } else { 
    %>
             <p>Le nombre <%= nombre %> est impair.</p>
    <% 
            } 
        } catch (NumberFormatException e) {
    %>
            <p>Veuillez entrer un nombre valide.</p>
    <% 
            }
        }
    %>

<p><a href="index.html">Retour au sommaire</a></p>
</body>
</html>
