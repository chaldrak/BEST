> **LES FONCTIONNALITÉS À IMPLÉMENTER pour la USER STORY #1**

- [ ]  Créer une page d'accueil (minimale avec du faux texte)
- [ ]  User inscription
- [ ]  Le User peut voir son écran de profil avec ses informations

### Model : user
has_many:articles

| Colums | Description |validation|
| --- | ----------- |-------------|
| pseudo| string | presence, min lenght=6 |
| email | string | presence, format |
| tel. | int | presence |
| address | text | - |

> **LES FONCTIONNALITÉS À IMPLÉMENTER pour la USER STORY #2**

- [ ]  User log in / log out
- [ ]  Le User peut choisir une catégorie de publication
- [ ]  Le User peut faire une publication (faire une CRUD des publications)
- [ ]  Créer une fonction de label pour les entreprises
- [ ]  Le User peut consulter l'ensemble de ses propres publications sur le site
- [ ]  Implémenter une fonction pour changer le statut de la publication

### Model : articles
belongs_to:user
has_many:company

| Colums | Description |validation|
| --- | ----------- |-------------|
| message| text | presence, min lenght=10 |
| categorie | int | presence, format |

### Model : company
has_many:articles

| Colums | Description |validation|
| --- | ----------- |-------------|
| company_name| string | presence|


> **LES FONCTIONNALITÉS À IMPLÉMENTER pour la USER STORY #3**

- [ ]  Fonctionnalité pour créer un espace administrateur
- [ ]  Implémenter une fonction de commentaire sur post
- [ ]  L’Admin peut créer un autre compte
- [ ]  L’Admin peut supprimer le post d'un autre utilisateur
- [ ]  Implémenter une fonction de chat
- [ ]  Créer une fonction pour filtrer les messages
- [ ]  Créer une fonction pour filtrer les utilisateurs

### Model : user
add_column_to_user : admin as boolean 

| Colums | Description |validation|
| --- | ----------- |-------------|
| admin| bool |     - |


### Model : message
has_many:articles

| Colums | Description |validation|
| --- | ----------- |-------------|
| message_text| string | presence|

### Model : conversation
has_many:articles

| Colums | Description |validation|
| --- | ----------- |-------------|
| sender_id| int | presence|
| receiver_id| int | presence|

> **LES FONCTIONNALITÉS À IMPLÉMENTER pour la USER STORY #4**

- [ ]  Fonctionnalité pour créer un compte premium
- [ ]  Une fonction de filtrage des labels "Entreprise"
