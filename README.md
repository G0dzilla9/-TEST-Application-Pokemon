# Application : Trouver son Pokemon **QuelPoke**

## Description du service

**QuelPoke** est une application web codée en Go (Golang) qui permet de générer un identifiant de Pokémon à partir d'un nom fourni via une requête GET. Le service retourne ensuite une page HTML affichant l'identifiant correspondant au Pokémon.

## Fonctionnement global

L'application fonctionne sur le protocole HTTP et écoute sur le port **8080**. Lorsqu'une requête GET est envoyée avec le nom d'un Pokémon, l'application utilise l'API **Pokeapi.co** pour récupérer les informations correspondantes. Le résultat est ensuite rendu dans une page HTML via un template (fichier `index.tmpl.html`).

L'application dépend principalement des bibliothèques standard de Go pour gérer les requêtes HTTP (`net/http`), le rendu des templates HTML (`html/template`), et la gestion des environnements. Elle peut également dépendre d'autres packages externes, spécifiés dans les fichiers `go.mod` et `go.sum`.

## Lancer le service sur votre poste

### Prérequis

1. **Télécharger les fichiers de l'application :**
   - Téléchargez le fichier zip contenant tous les fichiers nécessaires à l'application depuis [ce lien](https://storage.googleapis.com/quelpoke/quelpoke.zip).
   - Extrayez les fichiers sur votre poste.

2. **Installer un éditeur de code :**
   - Vous pouvez utiliser [Visual Studio Code](https://code.visualstudio.com/Download) pour lire et éditer le code source.

3. **Installer Go :**
   - Téléchargez et installez le compilateur Go depuis [le site officiel](https://go.dev/dl/).

### Étapes de lancement

1. **Ouvrir un terminal PowerShell :**
Lancez PowerShell et naviguez vers le répertoire où vous avez extrait les fichiers de l'application.
   ```cd "C:\Users\VOTRE_UTILISATEUR\Downloads\quelpoke"```
2. **Installer les dépendances :**
   ```go mod tidy```
3. **Lancer l'application :**
   ```go run main.go```
4. **Accéder à l'application sur un navigateur :**
    http://localhost:8080

Ce fichier `README.md` inclut toutes les informations et commandes nécessaires pour utiliser l'application, de manière claire et concise.

© 2024 QuelPoke

