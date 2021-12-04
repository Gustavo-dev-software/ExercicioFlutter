import 'package:flutter/material.dart';

void main() {
  runApp(
    Center(
      child: SizedBox(
        width: 450,
        height: 450,
        child: Stack(
          textDirection: TextDirection.ltr,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.bottomCenter,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                    Colors.purple,
                    Colors.blue,
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              alignment: Alignment.center,
              child: FittedBox(
                fit: BoxFit.contain,
                child: Image(
                  image: NetworkImage(
                    'https://media.giphy.com/media/xT0xezQGU5xCDJuCPe/giphy.gif',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
