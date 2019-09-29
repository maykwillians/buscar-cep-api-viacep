import 'package:buscar_cep_api_viacep/res/colors/Colors.dart';
import 'package:buscar_cep_api_viacep/res/strings/Strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_masked_text/flutter_masked_text.dart';

class ConsultarCEP extends StatefulWidget {
  @override
  _ConsultarCEPState createState() => _ConsultarCEPState();
}

class _ConsultarCEPState extends State<ConsultarCEP> {

  GlobalKey<FormState> globalKey = GlobalKey<FormState>();

  var controller = new MaskedTextController(mask: '00000-000');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: HexColor().branco,
        appBar: AppBar(
          backgroundColor: HexColor().secundary_color,
          title: Text(Strings().title_consultar_cep),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Form(
              key: this.globalKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildTextFormField(Strings().label_informe_o_cep),
                  Divider(),
                  Container(
                    height: 60,
                    child: RaisedButton(
                        child: Text(Strings().bt_consultar, style: TextStyle(color: HexColor().branco, fontSize: 20)),
                        color: HexColor().primary_color,
                        onPressed: () {
                          if(this.globalKey.currentState.validate()) {


                          }
                        }
                    ),
                  )
                ],
              ),
            )
        )
    );
  }

  TextFormField buildTextFormField(String label) {
    return TextFormField(
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          labelText: label,
          labelStyle: TextStyle(color: HexColor().preto, fontSize: 18),
        ),
        style: TextStyle(color: HexColor().secundary_color, fontSize: 22),
        controller: this.controller,
        // ignore: missing_return
        validator: (value) {
          String cep = value.replaceAll("-", "").replaceAll(" ", "").toString();
          if(cep.isEmpty){
            return Strings().error_informe_o_cep;
          } else if(cep.length < 8) {
            return Strings().error_cep_invalido;
          }
        }
    );
  }
}