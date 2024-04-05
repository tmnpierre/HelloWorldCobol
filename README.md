# Readme pour l'application COBOL de salutation

## Introduction

Cette application COBOL est un programme d'interaction continue avec l'utilisateur, conçu pour illustrer les concepts fondamentaux de la programmation en COBOL. Elle met en avant l'utilisation de commandes basiques telles que `DISPLAY`, `ACCEPT`, ainsi que des structures de contrôle comme les boucles et les conditions pour gérer les entrées utilisateur et contrôler le flux d'exécution du programme.

## Fonctionnalités

Le programme offre plusieurs fonctionnalités clés :

1. **Message de salutation initial** : À l'exécution, le programme affiche un message de bienvenue ("Bonjour COBOL!").
2. **Saisie et transformation d'un nom** : L'utilisateur est invité à saisir un nom. Le programme transforme cette entrée en majuscules, illustrant la manipulation de données de type chaîne.
3. **Salutation personnalisée** : Le programme affiche ensuite un message de salutation personnalisé avec le nom saisi, démontrant ainsi l'interaction entre l'utilisateur et le programme.
4. **Option de sortie** : L'utilisateur peut choisir de quitter le programme à tout moment en saisissant "EXIT", ce qui montre comment utiliser des conditions pour contrôler le flux d'exécution.
5. **Boucle d'interaction continue** : Les étapes 2 à 4 se répètent indéfiniment, créant un cycle d'interaction continue jusqu'à ce que l'utilisateur décide de quitter. Cela met en œuvre l'utilisation de boucles pour le contrôle de flux.

## Comment exécuter le programme

Pour exécuter ce programme, vous aurez besoin d'un environnement capable de compiler et d'exécuter des programmes COBOL. Voici les étapes générales :

1. **Installation d'un compilateur COBOL** : Installez un compilateur COBOL sur votre système, comme GnuCOBOL.
2. **Compilation du programme** : Utilisez le compilateur pour compiler le code source du programme. Par exemple, avec GnuCOBOL, vous utiliseriez une commande telle que `cobc -x -free -o helloworld helloworld.cob`.
3. **Exécution du programme** : Exécutez le programme compilé depuis la ligne de commande pour démarrer l'interaction.

## Dépendances

- Un compilateur COBOL (par exemple, GnuCOBOL).

## Auteur

Pierre

## Licence

Ce programme est fourni tel quel, sans garantie d'aucune sorte. Il est destiné à des fins éducatives et peut être librement modifié et distribué.

## Conclusion

Ce programme sert d'exemple introductif aux concepts de base de la programmation COBOL, soulignant l'importance des interactions utilisateur dans le développement logiciel. Il offre une opportunité pratique de se familiariser avec le langage COBOL et ses fonctionnalités d'interaction utilisateur.