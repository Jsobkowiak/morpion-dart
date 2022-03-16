import 'dart:io';

//   _____                _   _                          _            _             _
// |  ___|__  _ __   ___| |_(_) ___  _ __    _ __  _ __(_)_ __   ___(_)_ __   __ _| | ___
// | |_ / _ \| '_ \ / __| __| |/ _ \| '_ \  | '_ \| '__| | '_ \ / __| | '_ \ / _` | |/ _ \
// |  _| (_) | | | | (__| |_| | (_) | | | | | |_) | |  | | | | | (__| | |_) | (_| | |  __/
// |_|  \___/|_| |_|\___|\__|_|\___/|_| |_| | .__/|_|  |_|_| |_|\___|_| .__/ \__,_|_|\___|
//                                          |_|                       |_|
void main(List<String> args) {
  List<List<String>> monDamier =
      List.generate(10, (index) => List.generate(10, (index) => ""));
  afficheTitre();
  choixInit(monDamier);
  print("Génération 0");
  sortirDamier(monDamier);
  generationN(monDamier, saisirGeneration());
}

//  _____                _   _                    __           __       _ _
// |  ___|__  _ __   ___| |_(_) ___  _ __  ___    \_\_   _ __ /_/  __ _| (_)___  ___ _ __
// | |_ / _ \| '_ \ / __| __| |/ _ \| '_ \/ __|  / _` | | '__/ _ \/ _` | | / __|/ _ \ '__|
// |  _| (_) | | | | (__| |_| | (_) | | | \__ \ | (_| | | | |  __/ (_| | | \__ \  __/ |
// |_|  \___/|_| |_|\___|\__|_|\___/|_| |_|___/  \__,_| |_|  \___|\__,_|_|_|___/\___|_|
//

// met toutes les cases du damier à “blanc"
void initBlanc(List<List<String>> damier) {
 *, *], [*, *, *], [*, *, *]]
}

// permet d’entrer les coordonnées des cellules vivantes
// et d’initialiser le damier en conséquence.
void initCoordonnees(List<List<String>> damier) {

}

// sort le contenu de damier à la manière d’un affichage écran
void sortirDamier(List<List<String>> damier) {

}

// retourne le nombre de voisins vivants de la cellule damier[x][y]
int nombreVoisin(List<List<String>> damier, int x, int y) {

}

// recopie damier1 dans damier2, case par case
void transfer(List<List<String>> damier1, List<List<String>> damier2) {

}

// calcule, dans damier, la génération suivante du jeu de la vie.
// Cette fonction peut nécessiter l’utilisation d’un damier temporaire.
void generationSuivante(List<List<String>> damier) {

}

//  _____                _   _                                         _   __                      _        _
// |  ___|__  _ __   ___| |_(_) ___  _ __  ___   ___ _   _ _ __  _ __ | | /_/ _ __ ___   ___ _ __ | |_ __ _(_)_ __ ___  ___
// | |_ / _ \| '_ \ / __| __| |/ _ \| '_ \/ __| / __| | | | '_ \| '_ \| |/ _ \ '_ ` _ \ / _ \ '_ \| __/ _` | | '__/ _ \/ __|
// |  _| (_) | | | | (__| |_| | (_) | | | \__ \ \__ \ |_| | |_) | |_) | |  __/ | | | | |  __/ | | | || (_| | | | |  __/\__ \
// |_|  \___/|_| |_|\___|\__|_|\___/|_| |_|___/ |___/\__,_| .__/| .__/|_|\___|_| |_| |_|\___|_| |_|\__\__,_|_|_|  \___||___/
//                                                        |_|   |_|

// Fonction pour afficher le Titre du programme
void afficheTitre() {
  // http://patorjk.com/software/taag/

  print("  _             _                  _        _               _      \n" +
      " | |    ___    (_) ___ _   _    __| | ___  | | __ _  __   _(_) ___ \n" +
      " | |   / _ \\   | |/ _ \\ | | |  / _` |/ _ \\ | |/ _` | \\ \\ / / |/ _ \\\n" +
      " | |__|  __/   | |  __/ |_| | | (_| |  __/ | | (_| |  \\ V /| |  __/\n" +
      " |_____\\___|  _/ |\\___|\\__,_|  \\__,_|\\___| |_|\\__,_|   \\_/ |_|\\___|\n" +
      "             |__/                                                 ");
}

//fonction pour initialiser le damier selon le type d'initialisation
void choixInit(List<List<String>> damier) {
  int choix;
  choix = saisirChoix();
  if (choix == 1) {
    initCoordonnees(damier);
  } else if (choix == 2) {
    initPlaneur(damier);
  } else if (choix == 3) {
    initTest(damier);
  }
}

// fonction pour demander le type d'initialisation
int saisirChoix() {
  int i;
  print("Comment voulez vous initialiser le damier ?");
  print("1 - Manuellement.");
  print("2 - Avec un planeur.");
  print("3 - Avec une grille \"Test\".");
  i = saisirInt();
  while (!(i == 1 || i == 2 || i == 3)) {
    print("Erreur dans la saisie. Recommencez");
    i = saisirInt();
  }
  return i;
}

// fonction pour saisir des entiers, en gérant les exceptions
int saisirInt() {
  bool valide = false;
  int i = 0;
  while (!valide) {
    //print("Veuillez saisir un entier :");
    try {
      i = int.parse(stdin.readLineSync().toString());
      valide = true;
    } catch (e) {
      print("Erreur dans la saisie.");
    }
  }
  return i;
}

// Fonction pour saisir X ou Y, en fonction du tableau
int saisirXY(List<List<String>> damier) {
  int i;
  i = saisirInt();
  while (i < 0 || i >= damier.length) {
    print("Vous devez saisir une valeur entre 0 et " +
        (damier.length - 1).toString() +
        ". Recommencez");
    i = saisirInt();
  }
  return i;
}

// fonction pour arreter l'initialisation manuelle
bool stop() {
  String fin;
  bool finInit;
  print("Voulez-vous continuer ? (o/n)");
  fin = stdin.readLineSync().toString();
  if (fin == "o") {
    finInit = false;
  } else if (fin == "n") {
    finInit = true;
  } else {
    print("Erreur dans la réponse");
    finInit = stop();
  }
  return finInit;
}

// fonction pour initialiser avec une grille de test
void initTest(List<List<String>> damier) {
  List<List<String>> test = [
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", "o", "o", ".", ".", ".", "."],
    [".", ".", ".", "o", "o", ".", "o", ".", ".", "."],
    [".", ".", ".", "o", ".", ".", ".", "o", ".", "."],
    [".", ".", ".", "o", "o", ".", "o", "o", ".", "."],
    [".", ".", "o", "o", "o", "o", "o", ".", ".", "."],
    [".", ".", "o", "o", ".", ".", ".", ".", ".", "."],
    [".", "o", "o", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."]
  ];
  transfer(test, damier);
}

// fonction pour initialiser avec un planeur
void initPlaneur(List<List<String>> damier) {
  List<List<String>> planeur = [
    [".", "o", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", "o", ".", ".", ".", ".", ".", ".", "."],
    ["o", "o", "o", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."],
    [".", ".", ".", ".", ".", ".", ".", ".", ".", "."]
  ];
  transfer(planeur, damier);
}

// fonction pour demander le nombre de génération a afficher
int saisirGeneration() {
  int i;
  print("Combien voulez-vous de génération ? (minimum 1)");
  i = saisirInt();
  while (i < 1) {
    print("Erreur dans la saisie. Recommencez");
    i = saisirGeneration();
  }
  return i;
}

// fonction qui fait vivre N génération
void generationN(List<List<String>> damier, int n) {
  for (int i = 1; i <= n; i++) {
    print("Génération " + i.toString());
    generationSuivante(damier);
    sortirDamier(damier);
    //Pause for 1 seconds
    sleep(Duration(seconds: 1));
  }
}

// foncion qui retourne un caractère spécifique selon vivant ou mort
String forme(List<List<String>> damier, int x, int y) {
  //String forme = ".";
  String forme = "" + '\u26AA';
  if (damier[y][x] == "o") {
    forme = "" + '\u26AB';
  }
  return forme;
}
