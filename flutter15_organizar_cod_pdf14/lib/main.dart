import 'package:flutter/material.dart';
import 'package:flutter15_organizar_cod_pdf14/rota/rota.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: {
          '/': (context) => PrimeiraTela(),
          '/segunda': (context) => SegundaTela(),
          '/terceira': (context) => TerceiraTela(),
        },
      ),
    );
