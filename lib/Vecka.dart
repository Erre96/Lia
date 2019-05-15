import 'package:flutter/material.dart';

class Vecka extends StatefulWidget {

  @override
  _Vecka createState() => new _Vecka();
}

class _Vecka extends State<Vecka> {
  @override
  void initState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Card(
      child: Container(
          width: 300,
          padding: EdgeInsets.all(12),
          color: Colors.white70,
          child: Column(
            children: <Widget>[
              new Text(
                'Introduktion',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
                textAlign: TextAlign.center,
              ),
              new Text(
                '1 av 3 Färdiga',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Colors.green[500],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          )),
    );
  }
}
