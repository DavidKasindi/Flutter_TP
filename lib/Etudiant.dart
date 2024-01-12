class Etudiant {
  int id;
  String nom;
  String postnom;
  String prenom;
  String sexe;
  int age;
  DateTime dateNaissance;
  double poids;
  double taille;

  Etudiant(this.id, this.nom, this.postnom, this.prenom, this.sexe, this.age, this.dateNaissance, this.poids, this.taille);

  // Accesseurs et mutateurs
  int getId() => id;
  void setId(int id) => this.id = id;

  String getNom() => nom;
  void setNom(String nom) => this.nom = nom;

  String getPostnom() => postnom;
  void setPostnom(String postnom) => this.postnom = postnom;

  String getPrenom() => prenom;
  void setPrenom(String prenom) => this.prenom = prenom;

  String getSexe() => sexe;
  void setSexe(String sexe) => this.sexe = sexe;

  int getAge() => age;
  void setAge(int age) => this.age = age;

  DateTime getDateNaissance() => dateNaissance;
  void setDateNaissance(DateTime dateNaissance) => this.dateNaissance = dateNaissance;

  double getPoids() => poids;
  void setPoids(double poids) => this.poids = poids;

  double getTaille() => taille;
  void setTaille(double taille) => this.taille = taille;

  // Méthode pour afficher les informations de l'étudiant
  void afficherInformations() {
    print('Id: $id');
    print('Nom: $nom');
    print('Postnom: $postnom');
    print('Prenom: $prenom');
    print('Sexe: $sexe');
    print('Age: $age');
    print('Date de Naissance: $dateNaissance');
    print('Poids: $poids');
    print('Taille: $taille');
  }
}