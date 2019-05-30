# LibraryManager Changelog
Tous les changements opérés sur ce projet seront listés sur ce fichier par catégorie de modification.

## [Unreleased]

## [1.0.2] - 2017-05-28
### Correctifs
- Issue #2 : Affichage des dates : Changement de l'affichage des dates dans les JSP via les Expressions Language utilisées (`${date}` -> `${date.getDay()/date.getMonth()/date.getYear()}`)
- Issue #3 Affichage des erreurs : Les messages d'erreur s'affichent correctement dans la page d'erreur de l'application

### Evolution
- Ajout d'un bouton **Retour** dans la page d'erreur
