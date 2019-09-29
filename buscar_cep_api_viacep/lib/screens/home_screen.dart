import 'package:buscar_cep_api_viacep/res/colors/Colors.dart';
import 'package:buscar_cep_api_viacep/res/strings/Strings.dart';
import 'package:buscar_cep_api_viacep/screens/consultar_cep_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor().branco,
        appBar: AppBar(
          backgroundColor: HexColor().secundary_color,
          title: Text(Strings().app_name),
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
                      child: Text(Strings().bt_iniciar, style: TextStyle(color: HexColor().branco, fontSize: 20)),
                      color: HexColor().primary_color,
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