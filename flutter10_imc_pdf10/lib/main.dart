import 'package:flutter/material.dart';

void main() =>
    runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Calculadora()));

class Calculadora extends StatefulWidget {
  CalculadoraState createState() {
    return CalculadoraState();
  }
}

class CalculadoraState extends State<Calculadora> {
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
        backgroundColor: Colors.orange[900],
        title: Text(
          'Página Inicial - CALCULADORA',
        ),
      ),
      body: SizedBox(
        child: Column(
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
            Center(
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
            Center(
              child: Text(
                this.resp,
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.green,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                onSurface: Colors.green,
                elevation: 20,
                shadowColor: Colors.red,
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Imc(),
                  ),
                );
              },
              child: Text(
                'Calcule seu IMC',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Imc extends StatefulWidget {
  @override
  _ImcState createState() => _ImcState();
}

class _ImcState extends State<Imc> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  String resp = "";
  String _resp = "";

  imc() {
    double peso = double.parse(this.num01Controller.text);
    double altura = double.parse(this.num02Controller.text);
    double result = peso / (altura * altura);
    if (result < 16) {
      _resp = "Magreza Grave!";
    } else if (result >= 16 && result < 17) {
      _resp = "Magreza moderada!";
    } else if (result >= 17 && result < 18.5) {
      _resp = "Magreza leve!";
    } else if (result >= 18.5 && result < 25) {
      _resp = "Saudável!";
    } else if (result >= 25 && result < 30) {
      _resp = "Sobrepeso!";
    } else if (result >= 30 && result < 35) {
      _resp = "Obesidade Grau I!";
    } else if (result >= 35 && result < 40) {
      _resp = "Obesidade Grau II (severa)!";
    } else {
      _resp = "Obesidade Grau III (mórbida)!";
    }
    this.resp = 'Seu IMC corresponde a ' +
        result.toStringAsFixed(2) +
        ' Situação: ' +
        _resp;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[900],
          title: Text(
            'IMC',
          ),
        ),
        body: SizedBox(
          child: Column(
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
                    labelText: 'Informe o seu peso',
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
                    labelText: 'Informe a sua altura',
                  ),
                ),
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[700],
                        onSurface: Colors.black,
                        elevation: 20,
                        shadowColor: Colors.green[700],
                      ),
                      onPressed: () {
                        print(imc());
                        setState(imc);
                      },
                      child: Text(
                        'Calcular IMC',
                      ),
                    ),
                    Center(
                      child: Text(
                        this.resp,
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.blue[900],
                          fontWeight: FontWeight.bold,
                          height: 2,
                        ),
                      ),
                    ),
                    FittedBox(
                      fit: BoxFit.contain,
                      child: Image(
                        image: NetworkImage(
                          'https://lh3.googleusercontent.com/proxy/_YejcrvXic58Ef1ZEUocFRuKAeqOdAXyv-ySulQPjcorYIMXHMn1A0M1WqWbB03fNIo5u7bSXcbR_yuATutdJDhPjoS-2HYrMF_LygtvNuOA7iqYHtuCJVA',
                        ),
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green[700],
                        onSurface: Colors.black,
                        elevation: 20,
                        shadowColor: Colors.green[700],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Voltar a Calculadora',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
