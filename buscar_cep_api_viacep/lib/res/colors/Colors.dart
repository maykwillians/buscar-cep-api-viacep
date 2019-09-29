import 'dart:ui';

class HexColor {

  Color branco;
  Color preto;
  Color primary_color;
  Color secundary_color;

  HexColor (){

    this.branco = getColorFromHex("#ffffff");
    this.preto = getColorFromHex("#000000");
    this.primary_color = getColorFromHex("#3a5fcd");
    this.secundary_color = getColorFromHex("#cd3a5f");
  }

  Color getColorFromHex(String hexColor) {
    hexColor = hexColor.replaceAll("#", "");
    return Color(int.parse('FF' + hexColor, radix: 16));
  }
}