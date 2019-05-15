import 'package:flutter/material.dart';
import 'package:list_view/Vecka.dart';

class MainMenu extends StatefulWidget {
  @override
  _MainMenu createState() => new _MainMenu();
}

class _MainMenu extends State<MainMenu> {
  Color background = Color.fromRGBO(120, 120, 120, 100);
  Image heart = new Image.asset('assets/pictures/heart.jpg');
  @override
  void initState() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: background,
      appBar: new AppBar(
        title: new Text('Övningar'),
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: <Widget>[
          new Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            padding: EdgeInsets.only(
              bottom: 10,
            ),
            child: Image.asset('assets/pictures/heart.jpg', fit: BoxFit.fill),
          ),
          Container(
            child: RaisedButton(
              onPressed: () {},
              textColor: Colors.white,
              padding: EdgeInsets.all(1.5),
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xFF0D47A1),
                      Color(0xFF1976D2),
                      Color(0xFF42A5F5),
                    ],
                  ),
                ),
                padding: EdgeInsets.all(10),
                child: const Text('Fortsätt', style: TextStyle(fontSize: 20)),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Vecka(),
          ),
        ],
      ),
    );
  }
}
