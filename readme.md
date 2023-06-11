# Module 164 2023.06.11

Les logiciels à télécharger:
XAMPP (Mac) pour PhpMyAdmin
Laragon (Windows) pour MySQL
Pycharm Community IDE
Python (ce n'est pas un logiciel)

Pour la première foudra:

FlaskWebS
Voici les instructions fournies par un autre contributeur :

Il s'agit d'une simple application web créée dans le cadre du projet Modulus 164.

Le but de ce projet est de démontrer nos compétences et notre compréhension du développement web (feuille de route disponible ici).

Tous les éléments de la base de données (MCD, MLD et dictionnaire) sont disponibles dans le dossier .github/database.

Pour accéder à la documentation, veuillez visiter le lien suivant : [Documentation du projet Modulus 164](https://info164.github.io/doc164ver1/index.html).

Avant de procéder à l'installation, assurez-vous d'avoir téléchargé les logiciels requis :
<span style="color: #777;">Windows :</span>
- [HeidiSQL](https://www.heidisql.com/download.php) - v12.05 ou version ultérieure.
- [Gitbash](https://git-scm.com/download/win) - v2.41.0 ou version ultérieure.
- [Python](https://www.python.org/downloads/) - v3.11.3 ou version ultérieure.
- [Pycharm (community)](https://www.jetbrains.com/pycharm/download/?source=google&medium=cpc&campaign=14123077402&term=pycharm&content=536947779984&gad=1#section=windows) - v2023.1.2 ou version ultérieure.

Installation de l'application Flask :

Pour installer le projet dans PyCharm :
1) Lancez PyCharm pour la première fois.
2) Dans le coin supérieur droit, sélectionnez "Get from VCS".
3) Collez le lien .git dans le champ URL (cela importera le projet).
4) Cliquez sur le bouton "Clone".
5) Faites confiance aux projets lorsque vous y êtes invité.
6) Une fenêtre vous demandera peut-être de créer un environnement virtuel, cliquez sur "OK".
7) Laissez PyCharm ouvert.

Configuration d'HeidiSQL :
1) Lancez HeidiSQL.
2) Cliquez sur le bouton "Ajouter" situé en bas à gauche.
3) Si la case "Demander un identifiant" est décochée, cliquez sur "Ouvrir". Sinon, décochez la case, puis cliquez sur "Continuer".

Pour la 1er fois faudra:

1) Tout d'abord, ouvrez PyCharm et naviguez jusqu'au dossier ../APP_FILMS_164/database.
2) Dans ce dossier, vous trouverez un fichier appelé 1_importationDumpSql.py. Cliquez avec le bouton droit de la souris sur ce fichier.
3) Dans le menu contextuel qui s'affiche, sélectionnez l'option de la flèche verte. Cela lancera le fichier et importera la base de données correspondante.
4) Répétez les mêmes étapes pour le fichier 2_test_connection_bd.py. Cela vérifiera si vous pouvez vous connecter au serveur.
5) Enfin, recherchez le fichier run_mon_app.py dans le dossier ../APP_FILMS_164/database et cliquez avec le bouton droit de la souris dessus.
6) Sélectionnez l'option appropriée dans le menu contextuel pour lancer ce fichier. Cela démarrera votre application.
