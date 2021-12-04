import 'package:flutter/material.dart';

import 'rotas/rotas.dart';

void main() => runApp(MeuAplicativo());

class MeuAplicativo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PrimeiraRota(),
      routes: {
        SegundaRota.caminhoDaRota: (context) => SegundaRota(),
        TerceiraRota.caminhoDaRota: (contex) => TerceiraRota(),
      },
    );
  }
}
