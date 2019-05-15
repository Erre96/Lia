import 'package:flutter/material.dart';
import 'package:list_view/karlekenssprak.dart';
import 'package:list_view/myStrings.dart';
import 'main_page.dart';

void main() {
  runApp(new MaterialApp(
    home: new MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MyApp> {
  Questions questions;

  @override
  void initState() {
    setState(() {
      questions = new Questions();
    });
  }

  void _onChangeAlt1(bool value, int index) {
    setState(() {
      questions.markedAlt1[index] = value;
      questions.markedAlt2[index] = !value;
    });
  }

  void _onChangeAlt2(bool value, int index) {
    setState(() {
      questions.markedAlt1[index] = !value;
      questions.markedAlt2[index] = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('ListView Demo'),
      ),
      body: Column(
        children: [
          new Container(
            padding: const EdgeInsets.all(8.8),
            child: Text(myStrings.answerPlease,
                textAlign: TextAlign.center,
                style: new TextStyle(
                  fontSize: 16,
                )),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: questions.sum,
                itemBuilder: (BuildContext context, int index) {
                  return new Card(
                    child: new Container(
                      child: new Column(
                        children: <Widget>[
                          //new Text(('Ge mig en present ${index}')),
                          new CheckboxListTile(
                            value: questions.markedAlt1[index],
                            //controlAffinity: ListTileControlAffinity.leading,
                            title: new Text(
                              questions.questionsAlt1[index].toString(),
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            onChanged: (bool value) {
                              _onChangeAlt1(value, index);
                            },
                          ),
                          new CheckboxListTile(
                            value: questions.markedAlt2[index],
                            //controlAffinity: ListTileControlAffinity.leading,
                            //title: new Text(('Ge mig en present ${index}')),
                            title: new Text(
                              questions.questionsAlt2[index].toString(),
                              style: TextStyle(
                                fontSize: 14,
                              ),
                            ),
                            onChanged: (bool value) {
                              _onChangeAlt2(value, index);
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ),
          new Container(
            padding: const EdgeInsets.all(8.8),
            child: Text(myStrings.notFinished,
                style: new TextStyle(
                  color: questions.errorMessageColor,
                )),
          ),
          new RaisedButton(
              color: Theme.of(context).accentColor,
              splashColor: Colors.blueGrey,
              padding: const EdgeInsets.all(8.8),
              child: new Text(
                "Godkänn",
                style: new TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 16.0,
                  fontFamily: 'Roboto',
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                setState(() {
                  bool finished = questions.checkIfFinished();
                  if (finished) {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                LoveLanguageResults(questions.leadingCounter)));
                  }
                });
              }),
        ],
      ),
    );
  }
}

class LoveLanguageResults extends StatelessWidget {
  static String leadingCounter;
  LoveLanguageResults(String value) {
    leadingCounter = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Resultat"),
      ),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(55.5),
        child: Column(
          children: <Widget>[
            new Text(
              'Ditt kärleksspråk är $leadingCounter',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MainMenu()),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
