import 'dart:io';

class Plateau {
  int _y = 0;
  int _z = 0;
  List<List<String>> _plateau = [];

  Plateau.createplateau() {
    this._y = 3;
    this._z = 3;

    List<List<String>> _tab = List.generate(
        this._y, (index) => List.generate(this._z, (index) => " "));
    this._plateau = _tab;
  }

  List getList() {
    return this._plateau;
  }

  void vidertableau() {
    for (int i = 0; i < _plateau.length; i++) {
      for (int x = 0; x < _plateau.length; x++) {
        _plateau[i][x] = "*";
      }
    }
  }

  void design() {
    print("---------------");
    for (int y = 0; y < 3; y++) {
      for (int x = 0; x < 3; x++) {
        stdout.write("| " + _plateau[y][x].toString() + " |");
      }
      print("\n---------------");
    }
  }
}
