import 'package:flutter/material.dart';

class PrimeiraRota extends StatelessWidget {
  final TextEditingController valorEmRealController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Valor em Real',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: TextField(
              style: TextStyle(
                color: Colors.white,
              ),
              cursorColor: Colors.white,
              controller: valorEmRealController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => valorEmRealController.clear(),
                  icon: Icon(
                    Icons.clear,
                  ),
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelText: 'informe o valor em Real',
                labelStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.black38,
              ),
              label: const Text(
                'Próximo',
              ),
              icon: Icon(
                Icons.navigate_next,
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  SegundaRota.caminhoDaRota,
                  arguments: double.parse(
                    valorEmRealController.text,
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class SegundaRota extends StatelessWidget {
  static const caminhoDaRota = '/segundaRota';
  final TextEditingController cotacaoDoDolarController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    double valorEmReal = ModalRoute.of(context)!.settings.arguments as double;

    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Cotação',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: TextField(
              cursorColor: Colors.white,
              controller: cotacaoDoDolarController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => cotacaoDoDolarController.clear(),
                  icon: Icon(
                    Icons.clear,
                  ),
                ),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.white,
                  ),
                ),
                labelText: 'informe a cotação do Dólar',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.black38,
              ),
              icon: Icon(
                Icons.navigate_next,
              ),
              label: const Text(
                'Próximo',
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  TerceiraRota.caminhoDaRota,
                  arguments: ArgumentosDaRota(
                    valorEmReal,
                    double.parse(
                      cotacaoDoDolarController.text,
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TerceiraRota extends StatelessWidget {
  static const caminhoDaRota = '/terceiraRota';

  converter(double valorEmReal, double cotacao) => valorEmReal / cotacao;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      backgroundColor: Colors.black38,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(
          'Resultado',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Container(
          child: Text(
            'R\$ ${argumentos.valorEmReal.toStringAsFixed(2)} = US\$ ${converter(argumentos.valorEmReal, argumentos.cotacao).toStringAsFixed(2)}',
            style: TextStyle(
              fontSize: 40,
              color: Colors.greenAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  double valorEmReal;
  double cotacao;

  ArgumentosDaRota(this.valorEmReal, this.cotacao);
}
