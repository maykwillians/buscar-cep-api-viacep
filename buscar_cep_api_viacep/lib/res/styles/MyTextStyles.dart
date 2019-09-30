import 'package:buscar_cep_api_viacep/res/colors/MyColors.dart';
import 'package:flutter/cupertino.dart';

class MyTextStyle {

  Text textCommon(String text) {
    return Text(text,
        style: TextStyle(
            color: MyColors().preto,
            fontSize: 25,
            fontFamily: 'Mansalva'));
  }
  Text textTitleCommon(String text) {
    return Text(text,
        style: TextStyle(
            color: MyColors().preto,
            fontSize: 29,
            fontFamily: 'Pacifico'));
  }
}