import 'package:flutter/material.dart';

class PrimeiraRota extends StatelessWidget {
  final TextEditingController temperaturacelsiusController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text('Graus Celsius'),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: TextField(
              controller: temperaturacelsiusController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => temperaturacelsiusController.clear(),
                  icon: Icon(
                    Icons.clear,
                  ),
                ),
                border: OutlineInputBorder(),
                labelText: 'Temperatura em graus Celsius',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(
              10,
            ),
            child: ElevatedButton(
              child: Text(
                "Converter",
              ),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  RotaGenerica.caminhoDaRota,
                  arguments: ArgumentosDaRota('Graus Fahrenheit',
                      double.parse(temperaturacelsiusController.text)),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class RotaGenerica extends StatelessWidget {
  static const caminhoDaRota = '/rotaGenerica';

  converter(double celsius) => celsius * 1.8 + 32;

  @override
  Widget build(BuildContext context) {
    ArgumentosDaRota argumentos =
        ModalRoute.of(context)!.settings.arguments as ArgumentosDaRota;
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        backgroundColor: Colors.black38,
        title: Text(argumentos.titulo),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(
                10,
                100,
                10,
                10,
              ),
              child: Text(
                'Graus Celsius: ${argumentos.celsius.toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.greenAccent,
                  backgroundColor: Colors.black38,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                10,
                100,
                10,
                10,
              ),
              child: Text(
                'Graus Fahrenheit: ${converter(argumentos.celsius).toStringAsFixed(2)}',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.red,
                  backgroundColor: Colors.black38,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ArgumentosDaRota {
  String titulo;
  double celsius;

  ArgumentosDaRota(this.titulo, this.celsius);
}
