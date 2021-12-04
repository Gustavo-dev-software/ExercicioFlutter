
import 'package:flutter/material.dart';

void main() {
  String nome = "Gustavo Venâncio";
  String dia_semana = "Quinta-feira";
  runApp(
    Center(
      child: RichText(
        textDirection: TextDirection.ltr,
        text: TextSpan(
          text: "Olá, ",
          style: TextStyle(
            color: Colors.green,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            backgroundColor: Colors.white,
          ),
          children: <TextSpan>[
            TextSpan(
              text: '$nome',
              style: TextStyle(
                color: Colors.blue[400],
                decoration: TextDecoration.underline,
                decorationColor: Colors.red,
                decorationStyle: TextDecorationStyle.double,
                backgroundColor: Colors.green,
              ),
            ),
            TextSpan(
              text: "\nHoje é $dia_semana!",
              style: TextStyle(
                color: Colors.red,
                fontSize: 40,
                backgroundColor: Colors.yellow,
              ),
            ),
            TextSpan(
              text: '\nBom dia!',
            ),
          ],
        ),
      ),
    ),
  );
}
