import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: Text(
        'Gustavo Venâncio',
        textDirection: TextDirection.ltr,
        style: TextStyle(
          fontSize: 60,
          color: Colors.yellow,
          decoration: TextDecoration.underline,
        ),
      ),
    ),
  );
}
