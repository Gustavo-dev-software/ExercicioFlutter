import 'package:flutter/material.dart';

void main() => runApp(
    MaterialApp(debugShowCheckedModeBanner: false, home: Paralelepipedo()));

class Paralelepipedo extends StatefulWidget {
  ParalelepipedoState createState() {
    return ParalelepipedoState();
  }
}

class ParalelepipedoState extends State<Paralelepipedo> {
  TextEditingController num01Controller = TextEditingController();
  TextEditingController num02Controller = TextEditingController();
  TextEditingController num03Controller = TextEditingController();
  String resp = "";
  volume() {
    double num01 = double.parse(this.num01Controller.text);
    double num02 = double.parse(this.num02Controller.text);
    double num03 = double.parse(this.num03Controller.text);
    double volume = num01 * num02 * num03;
    this.resp = '$num01 * $num02  * $num03 = ' + volume.toStringAsFixed(2);
    return this.resp;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Paralelepipedo'),
        backgroundColor: Colors.purple[600],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                labelText: 'informe o comprimento',
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
                labelText: 'informe a largura',
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              controller: num03Controller,
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                    onPressed: () => num03Controller.clear(),
                    icon: Icon(Icons.clear),
                  ),
                  border: OutlineInputBorder(),
                  labelText: 'informe a altura'),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.purple[600],
              onSurface: Colors.orange,
              elevation: 20,
              shadowColor: Colors.purple[600],
            ),
            onPressed: () {
              print(volume());
              setState(volume);
            },
            child: Text(
              'Calcular',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          Text(
            this.resp,
            style: TextStyle(
              fontSize: 60,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'PARALELEPIPEDO',
            style: TextStyle(
              fontSize: 30,
              color: Colors.purple[900],
            ),
          ),
          Expanded(
            child: FittedBox(
              fit: BoxFit.contain,
              child: Image(
                image: NetworkImage(
                  'https://sabermatematica.com.br/wp-content/uploads/2017/03/paralelepipedo-1.png',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
