import 'package:buscar_cep_api_viacep/res/colors/MyColors.dart';
import 'package:buscar_cep_api_viacep/res/strings/MyStrings.dart';
import 'package:buscar_cep_api_viacep/screens/consultar_cep_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors().branco,
        appBar: AppBar(
          backgroundColor: MyColors().secundary_color,
          title: Text(MyStrings().app_name),
          centerTitle: true,
        ),
        body: Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                    height: 60,
                    child: RaisedButton(
                      child: Text(MyStrings().bt_iniciar, style: TextStyle(color: MyColors().branco, fontSize: 20)),
                      color: MyColors().primary_color,
                      onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => ConsultarCEP()));
                      },
                    )
                )
              ],
            )
        )
    );
  }
}