      *    *************************************************************
      *    Ce programme COBOL est conçu pour illustrer les 
      *    fonctionnalités
      *    de base de la programmation COBOL en interagissant avec 
      *    l'utilisateur.
      *    
      *    Dans un premier temps, le programme va :
      *    
      *    1. Afficher un message de salutation en console dès son 
      *    exécution. Le message affiché sera : "Bonjour COBOL!".
      * 
      *    Pour aller plus loin, le programme va également :
      *    
      *    2. Demander à l'utilisateur de saisir un message.
      *    Cette fonctionnalité permet de saisir une entrée utilisateur
      *    via la console.
      *    
      *    3. Afficher le message saisi par l'utilisateur.
      *    Ceci permet de confirmer que l'entrée de l'utilisateur a été
      *    correctement reçue et traitée par le programme.
      *    
      *    4. Répéter les étapes 2 et 3 à l'infini, créant ainsi un 
      *    cycle d'interaction continue avec l'utilisateur.
      * 
      *    Ce programme illustre l'utilisation des instructions DISPLAY,
      *    ACCEPT et des boucles pour créer des interactions de base
      *    avec l'utilisateur dans un programme COBOL.
      *    *************************************************************

       IDENTIFICATION DIVISION.
       PROGRAM-ID. hellowrd.
       AUTHOR. pierre.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *    Déclare une variable pour stocker l'entrée utilisateur,
      *    capable de contenir jusqu'à 50 caractères alphanumériques.
       01 USER-INPUT PIC A(50).

      *    Déclare une variable booléenne pour contrôler la sortie de la
      *    boucle.
       01 EXIT-FLAG PIC 9 VALUE 0.
           88 CONTINUE-LOOP VALUE 0.
           88 EXIT-LOOP    VALUE 1.

       PROCEDURE DIVISION.
      *    Affiche un message de salutation initial.
           DISPLAY "Bonjour COBOL!".

      *    Démarre une boucle qui continue tant que EXIT-FLAG indique de
      *    continuer.
           PERFORM UNTIL EXIT-LOOP

      *    Invite l'utilisateur à saisir un nom.
                DISPLAY "Entrez un nom (ou 'EXIT' pour quitter) : "

      *    Enregistre l'entrée utilisateur dans la variable USER-INPUT.
                ACCEPT USER-INPUT

      *    Convertit l'entrée utilisateur en majuscules.
                MOVE FUNCTION UPPER-CASE(USER-INPUT) TO USER-INPUT

      *    Vérifie si l'utilisateur a saisi "EXIT" (en majuscules) et 
      *    met à jour EXIT-FLAG en conséquence.
                IF USER-INPUT = "EXIT" THEN
                    SET EXIT-LOOP TO TRUE
                ELSE
      *    Affiche un message de salutation personnalisé avec l'entrée
      *    de l'utilisateur.
                    DISPLAY "Bonjour ", USER-INPUT
                END-IF

      *    Fin de la boucle PERFORM.
           END-PERFORM.

      *    Termine l'exécution du programme.
           STOP RUN.