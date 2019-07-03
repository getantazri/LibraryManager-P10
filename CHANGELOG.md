# LibraryManager Changelog
Tous les changements opérés sur ce projet seront listés sur ce fichier par catégorie de modification.

## [Unreleased]
## [1.0.7] - 2019-06-30
### Correctifs
- Modification des attributs du model Spring pour ajouter un nouveau membre pour corriger les conflits avec d'autres attributs possédant le même nom (*member*)

### Evolutions
- Ajout d'une classe *HashPasswordUtil* pour permettre de hasher le mot de passe d'un nouvel utilisateur avant d'envoyer la requête au webservice

## [1.0.7] - 2019-06-05
### Correctifs
- Correction du formulaire dans `search.jsp` empêchant l'accès à la page (WebApp)
- Correction de l'opération de récupération du nombre de copies disponibles pour un livre (WebService)

### Evolutions
- Ajout d'une méthode permettant de récupérer les **Loan** en cours dans la couche Business (WebService)

## [1.0.6] - 2019-06-05
### Evolutions
- Ajout d'un espace d'administration (accéssible via la navigation avec le statut **admin**)
- Ajout d'une page dédiée à la gestion des utilisateurs `members.jsp`
- Ajout d'un Controller pour la section Administration 
- Ajout des fonctionnalités CRUD pour les membres avec des méthodes `add`, `update`et `delete` via le webservice **MemberManagement**
- 

### Mise à jour
- Mise à jour de l'entité `Member`avec l'ajout d'un attribut **status** (Modifications effectuées dans les fichiers `member.xsd` et `Member` dans la couche **Model**)
- Mise à jour des données de test du fichier `data.sql`pour y inclure l'attribut `status`
- Mise à jour du script de création des tables `create_table.sql`pour y inclure les modifications de l'entité **member**
- Changement de style des listes : ajout d'une bordure inférieure pour améliorer la lecture

## [1.0.5] - 2019-06-03
### Evolutions
- Automatisation du Batch via les annotations `@Scheduled` (`SendMailJob`) et `@EnbleScheduling` (`LibrarymanagerBatchApplication`) sur une granularité quotidienne 

## [1.0.4] - 2019-06-02
### Evolutions
- Ajout d'une objet Extension généré par *WSDL2JAVA* via le fichier `extension.xsd` dans le webservice **LoanManagement**
- Ajout de l'opération **GetMaximumExtension** dans le webservice **LoanManagement** permettant de récupérer la consiguration du nombre de jours maximum autorisé pour l'extension d'un *loan* (prêt) dans le fichier `config.properties`dans la couche **Business**
- Ajout d'une liste déroulante dans la page de détails d'un *loan* (prêt) permettant de choisir la durée d'extension

## [1.0.3] - 2019-05-31
### Correctifs 
- Issue #1 Gestion des erreur HTTP 400 (Bad request) : Ajout d'une erreur par défaut

## [1.0.2] - 2019-05-28
### Correctifs
- Issue #2 Affichage des dates : Changement de l'affichage des dates dans les JSP via les Expressions Language utilisées (`${date}` -> `${date.getDay()/date.getMonth()/date.getYear()}`)
- Issue #3 Affichage des erreurs : Les messages d'erreur s'affichent correctement dans la page d'erreur de l'application

### Evolution
- Ajout d'un bouton **Retour** dans la page d'erreur
