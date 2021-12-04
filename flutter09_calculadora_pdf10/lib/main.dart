import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));

class Home extends StatefulWidget {
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";
  somar() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 + num02;
    this.resp = '$num01 + $num02 = ' + result.toStringAsFixed(2);
    return this.resp;
  }

  subtrair() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 - num02;
    this.resp = '$num01 - $num02 = ' + result.toStringAsFixed(2);
    return this.resp;
  }

  dividir() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 / num02;
    this.resp = '$num01 / $num02 = ' + result.toStringAsFixed(2);
    return this.resp;
  }

  multiplicar() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double result = num01 * num02;
    this.resp = '$num01 * $num02 = ' + result.toStringAsFixed(2);
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Página Inicial - Calculadora',
        ),
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num01Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num01Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o primeiro número',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num02Controller,
              decoration: InputDecoration(
                suffixIcon: IconButton(
                  onPressed: () => num02Controller.clear(),
                  icon: Icon(Icons.clear),
                ),
                border: OutlineInputBorder(),
                labelText: 'Informe o segundo número',
              ),
            ),
          ),
          Center(
            child: SizedBox(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onSurface: Colors.green,
                      elevation: 20,
                      shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      print(somar());
                      setState(somar);
                    },
                    child: Icon(Icons.add_outlined),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onSurface: Colors.green,
                      elevation: 20,
                      shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      print(subtrair());
                      setState(subtrair);
                    },
                    child: Icon(Icons.horizontal_rule_outlined),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onSurface: Colors.green,
                      elevation: 20,
                      shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      print(dividir());
                      setState(dividir);
                    },
                    child: Icon(Icons.close_fullscreen_outlined),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      onSurface: Colors.green,
                      elevation: 20,
                      shadowColor: Colors.red,
                    ),
                    onPressed: () {
                      print(multiplicar());
                      setState(multiplicar);
                    },
                    child: Icon(Icons.clear_sharp),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    'SOMAR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange[700],
                    ),
                  ),
                  Text(
                    'SUBTRAIR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange[700],
                    ),
                  ),
                  Text(
                    'DIVIDIR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange[700],
                      backgroundColor: Colors.white38,
                    ),
                  ),
                  Text(
                    'MULTIPLICAR',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.orange[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                Text(
                  this.resp,
                  style: TextStyle(
                    fontSize: 50,
                    color: Colors.green,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
