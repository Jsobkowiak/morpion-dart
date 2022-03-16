import 'dart:async';
import 'dart:io';
import 'plateau.dart';

class Morpion {
  //Attribut
  bool _victoire = false;
  Plateau _plateau = new Plateau.createplateau();
  int _tour = 0;

  List getlist() {
    return _plateau.getList();
  }

  void Rempirtableau() {
    while (this._victoire == false) {
      _plateau.design();
      print("Saisie du joueurs 1 (O) Entre 1 et 9");
      int valeur = int.parse(stdin.readLineSync().toString());

      if (valeur == 1) {
        if (_plateau.getList()[0][0] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[0][0] = "O";
        }
      }
      if (valeur == 2) {
        if (_plateau.getList()[0][1] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[0][1] = "O";
        }
      }

      if (valeur == 3) {
        if (_plateau.getList()[0][2] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[0][2] = "O";
        }
      }

      if (valeur == 4) {
        if (_plateau.getList()[1][0] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[1][0] = "O";
        }
      }

      if (valeur == 5) {
        if (_plateau.getList()[1][1] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[1][1] = "O";
        }
      }

      if (valeur == 6) {
        if (_plateau.getList()[1][2] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[1][2] = "O";
        }
      }
      if (valeur == 7) {
        if (_plateau.getList()[2][0] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[2][0] = "O";
        }
      }
      if (valeur == 8) {
        if (_plateau.getList()[2][1] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[2][1] = "O";
        }
      }
      if (valeur == 9) {
        if (_plateau.getList()[2][2] == "X") {
          print("La case est déjà prise");
        } else {
          _plateau.getList()[2][2] = "O";
        }
      }
      win();
      if (this._victoire == false) {
        _plateau.design();
        print("Saisie du joueurs 2 (X) Entre 1 et 9");
        int valeur2 = int.parse(stdin.readLineSync().toString());
        _tour++;

        if (valeur2 == 1) {
          if (_plateau.getList()[0][0] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[0][0] = "X";
          }
        }
        if (valeur2 == 2) {
          if (_plateau.getList()[0][1] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[0][1] = "X";
          }
        }

        if (valeur2 == 3) {
          if (_plateau.getList()[0][2] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[0][2] = "X";
          }
        }

        if (valeur2 == 4) {
          if (_plateau.getList()[1][0] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[1][0] = "X";
          }
        }

        if (valeur2 == 5) {
          if (_plateau.getList()[1][1] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[1][1] = "X";
          }
        }

        if (valeur2 == 6) {
          if (_plateau.getList()[1][2] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[1][2] = "X";
          }
        }
        if (valeur2 == 7) {
          if (_plateau.getList()[2][0] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[2][0] = "X";
          }
        }
        if (valeur2 == 8) {
          if (_plateau.getList()[2][1] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[2][1] = "X";
          }
        }
        if (valeur2 == 9) {
          if (_plateau.getList()[2][2] == "O") {
            print("La case est déjà prise");
          } else {
            _plateau.getList()[2][2] = "X";
          }
        }
        win();
      }

      _plateau.design();
    }
  }

  bool win() {
    bool victoire = false;

    if (_plateau.getList()[0][0] == "X" &&
        _plateau.getList()[0][1] == "X" &&
        _plateau.getList()[0][2] == "X") {
      print("Le joueur 2 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[1][0] == "X" &&
        _plateau.getList()[1][1] == "X" &&
        _plateau.getList()[1][2] == "X") {
      print("Le joueur 2 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[2][0] == "X" &&
        _plateau.getList()[2][1] == "X" &&
        _plateau.getList()[2][2] == "X") {
      print("Le joueur 2 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[0][0] == "X" &&
        _plateau.getList()[1][1] == "X" &&
        _plateau.getList()[2][2] == "X") {
      print("Le joueur 2 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[0][2] == "X" &&
        _plateau.getList()[1][1] == "X" &&
        _plateau.getList()[2][0] == "X") {
      print("Le joueur 2 a gagner");
      victoire = true;
    }

    if (_plateau.getList()[0][0] == "O" &&
        _plateau.getList()[0][1] == "O" &&
        _plateau.getList()[0][2] == "O") {
      print("Le joueur 1 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[1][0] == "O" &&
        _plateau.getList()[1][1] == "O" &&
        _plateau.getList()[1][2] == "O") {
      print("Le joueur 1 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[2][0] == "O" &&
        _plateau.getList()[2][1] == "O" &&
        _plateau.getList()[2][2] == "O") {
      print("Le joueur 1 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[0][0] == "O" &&
        _plateau.getList()[1][1] == "O" &&
        _plateau.getList()[2][2] == "O") {
      print("Le joueur 1 a gagner");
      victoire = true;
    }
    if (_plateau.getList()[0][2] == "O" &&
        _plateau.getList()[1][1] == "O" &&
        _plateau.getList()[2][0] == "O") {
      print("Le joueur 1 a gagner");
      victoire = true;
    }
    return this._victoire = victoire;
  }

  bool nul() {
    bool victoire = false;

    if (_tour == 9) {
      print("Match nul");
      victoire = true;
    }
    return this._victoire = victoire;
  }
}
