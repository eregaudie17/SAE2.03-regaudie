### Itération 1 :  Consulter la liste des films proposés par la plateforme
Pas de modification de la BDD étant donnée que l’on a besoin que de la liste des films.

### Itération 2 : Ajouter des films à la BDD
Pas de modification étant donnée que l’on a juste besoin d’envoyer des formulaires contenant les infos des films à la BDD pour les ajouter à la liste.

### Itération 3 :  Consulter les informations détaillées d’un film ainsi que son trailer
Pas de modification car on doit juste récupérer les infos contenu dans les tables pour les faire afficher par le navigateur.

### Itération 4 : Afficher les films en les regroupant par catégorie
Pas de modification car le tri des films par catégorie se fait  dans la requête SQL.

### Itération 5 : Avoir un formulaire pour ajouter des profils utilisateur
Modification de la BDD : ajout d’une table « Profile » visant à contenir les informations (id,nom, avatar, age) des profils utilisateur ajoutés à l’aide du formulaire de la page admin. Cette table n’est  n’est reliée à aucune autre.
La clé primaire de cette table est « id » qui est de type INT (entier) et qui s’auto-incrémente de manière à avoir un id unique pour chaque profil créé. La ligne name (nom) est un varchar de 12 caractère car pour des raisons d’affichage sur la page app la longueur des noms de profil est limitée à 12. La ligne avatar est un varchar de 255 afin qu’il puisse contenir les noms de fichier des avatar des profils sans problème. Enfin la ligne min_age est un INT afin de stocker un entier représentant l’âge de l’utilisateur du profil.

### Itération 6 : Pouvoir choisir un profil utilisateur
Pas de modification, le choix des profil se fait en JS.

### Itération 7 : Filtrer les contenus selon l’âge du profil sélectionné
Pas de modification, le tri se fait dans la requête SQL.

### Itération 8 : Pouvoir modifier un profil utilsateur
Pas de modification, l’édition des profils se fait sur la page admin.

### Itération 9 (pas commencée) : Pouvoir ajouter des films à une liste de favoris par profil utilisateur
Modification théorique de la BDD : ajout d’une table « Favoris » stockant les id des films et des profils qui ont ajouté des films en favori. Cette table relierait les table « Movie » et « Profile ».