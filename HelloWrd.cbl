      *    *************************************************************
      *    Programme COBOL d'interaction continue avec l'utilisateur
      *    
      *    Ce programme illustre les fonctionnalités de base de la 
      *    programmation COBOL en interagissant avec l'utilisateur via  
      *    la console. Il démontre l'utilisation des instructions 
      *    DISPLAY, ACCEPT, et des structures de contrôle comme les  
      *    boucles et les conditions pour gérer les entrées utilisateur 
      *    et contrôler le flux d'exécution du programme.
      *    
      *    Voici un aperçu des fonctionnalités implémentées :
      *    
      *    1. Affichage d'un message de salutation initial 
      *       ("Bonjour COBOL!") dès l'exécution du programme.
      *    2. Saisie d'un nom par l'utilisateur, suivi de la
      *       transformation de cette entrée en majuscules, illustrant
      *        la manipulation de données de type chaîne.
      *    3. Affichage d'un message de salutation personnalisé avec le 
      *       nom saisi, démontrant l'interaction utilisateur-programme.
      *    4. Option pour l'utilisateur de quitter le programme en 
      *       saisissant "EXIT", ce qui montre l'utilisation de 
      *       conditions pour contrôler le flux du programme.
      *    5. Répétition des étapes 2 à 4 indéfiniment, créant un cycle
      *       d'interaction continue, jusqu'à ce que l'utilisateur 
      *       décide de quitter, mettant en œuvre des boucles pour le 
      *       contrôle de flux.
      *    
      *    Ce programme sert d'exemple introductif aux concepts de base 
      *    de la programmation COBOL, en mettant en évidence 
      *    l'importance des interactions utilisateur dans le 
      *    développement de logiciels.
      *    *************************************************************


       IDENTIFICATION DIVISION.
       PROGRAM-ID. hellowrd.
       AUTHOR. pierre.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *    Déclare une variable pour stocker l'entrée utilisateur,
      *    capable de contenir jusqu'à 50 caractères alphanumériques.
       01 USER-INPUT PIC A(50).
          88 EXIT-LOOP VALUE "EXIT". 
      *    Utilisation de la valeur spéciale "EXIT" pour contrôler la
      *    boucle

       PROCEDURE DIVISION.
      *    Affiche un message de salutation initial.
           DISPLAY "Bonjour COBOL!".

      *    Démarre une boucle qui continue tant que l'utilisateur n'a 
      *    pas saisi "EXIT".
           PERFORM UNTIL EXIT-LOOP

      *    Invite l'utilisateur à saisir un nom.
                DISPLAY "Entrez un nom (ou 'EXIT' pour quitter) : "

      *    Enregistre l'entrée utilisateur dans la variable USER-INPUT.
                ACCEPT USER-INPUT

      *    Convertit l'entrée utilisateur en majuscules pour une 
      *    comparaison uniforme.
                MOVE FUNCTION UPPER-CASE(USER-INPUT) TO USER-INPUT

      *    Vérifie si l'utilisateur a saisi "EXIT" (après conversion en 
      *    majuscules).
                IF NOT EXIT-LOOP

      *    Affiche un message de salutation personnalisé avec l'entrée 
      *    de l'utilisateur.
                    DISPLAY "Bonjour ", USER-INPUT
                END-IF

      *    Fin de la boucle PERFORM.
           END-PERFORM.

      *    Termine l'exécution du programme.
           STOP RUN.