# Exercice fullstack web

## Objectif - s'entrainer à déployer un site qui requête une BDD avec docker

## Choix :
> php
> php myadmin
> mysql - db déjà créée
> mysqli
> docker

## Problèmes

Une fois les docker lancés, l'accès à phpmyadmin se fait bien, la db est présente et les tables remplies mais la tentative d'accès à l'index via localhost se solde par : 

*Fatal error: Uncaught Error: Call to undefined function mysqli_connect() in /var/www/html/index.php:3 Stack trace: #0 {main} thrown in /var/www/html/index.php on line 3*  

Pas de résolution en essayant d'activer mysqli directement dans le docker apache (via CLI) avec *docker-php-ext-install mysqli* (mysqli s'installe sans erreur).