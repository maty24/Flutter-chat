import 'package:flutter/material.dart';

//le pongo _ porque es privado
const Color _customColor = Color.fromARGB(255, 113, 73, 177);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(
            selectedColor >= 0 &&
                selectedColor <=
                    _colorThemes.length - 1, //assert para manejar los errores
            'Color must be btn 0 and ${_colorThemes.length}');

  ThemeData theme() {
    return ThemeData(
        useMaterial3: true, //para que use el material3
        colorSchemeSeed:
            _colorThemes[selectedColor]); //le envio como color selecionado
  }
}
