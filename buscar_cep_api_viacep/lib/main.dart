import 'package:buscar_cep_api_viacep/res/colors/Colors.dart';
import 'package:buscar_cep_api_viacep/res/strings/Strings.dart';
import 'package:buscar_cep_api_viacep/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: Strings().title_home,
        theme: ThemeData(
            primarySwatch: Colors.blue,
            primaryColor: HexColor().primary_color
        ),
        debugShowCheckedModeBanner: false,
        home: HomeScreen()
    );
  }
}