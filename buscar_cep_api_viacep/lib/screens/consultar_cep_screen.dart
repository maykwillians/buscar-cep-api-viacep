import 'package:buscar_cep_api_viacep/res/colors/MyColors.dart';
import 'package:buscar_cep_api_viacep/res/strings/MyStrings.dart';
import 'package:buscar_cep_api_viacep/res/styles/MyTextStyles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ConsultarCEP extends StatefulWidget {
  @override
  _ConsultarCEPState createState() => _ConsultarCEPState();
}

class _ConsultarCEPState extends State<ConsultarCEP> {

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  static const url = "https://viacep.com.br/ws/01001000/json/";
  var controller = new MaskedTextController(mask: '00000-000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors().branco,
        appBar: AppBar(
          backgroundColor: MyColors().secundary_color,
          title: Text(MyStrings().title_consultar_cep),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Form(
              key: this.globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildTextFormField(MyStrings().label_informe_o_cep),
                  Divider(),
                  Container(
                    height: 60,
                    child: RaisedButton(
                        child: Text(MyStrings().bt_consultar, style: TextStyle(color: MyColors().branco, fontSize: 20)),
                        color: MyColors().primary_color,
                        onPressed: () {
                          if(this.globalKey.currentState.validate()) {


                          }
                        }
                    ),
                  ),
                  Divider(),
                  MyTextStyle().textCommon("Teste"),
                  Divider(),
                  MyTextStyle().textTitleCommon("Título"),
                ],
              ),
            )
        )
    );
  }

  Future<Map> getDados() async {


  }

  TextFormField buildTextFormField(String label) {
    return TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: MyColors().preto, fontSize: 18),
        ),
        style: TextStyle(color: MyColors().secundary_color, fontSize: 22),
        controller: this.controller,
        // ignore: missing_return
        validator: (value) {
          String cep = value.replaceAll("-", "").replaceAll(" ", "").toString();
          if(cep.isEmpty){
            return MyStrings().error_informe_o_cep;
          } else if(cep.length < 8) {
            return MyStrings().error_cep_invalido;
          }
        }
    );
  }
}