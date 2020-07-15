import 'dart:math';
import 'package:flutter/material.dart';

// Choix truc chiant
class Choix extends StatefulWidget {
  @override
  _ChoixState createState() => _ChoixState();
}

class _ChoixState extends State<Choix> {
  final myController = TextEditingController();
  final myController2 = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_saveLatestValue);
    myController2.addListener(_saveLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    myController2.dispose();
    super.dispose();
  }

  _saveLatestValue() {
    print("Choix's text field 1: ${myController.text}");
    print("Choix's text field 2: ${myController2.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Choix',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(2.0, 2.0),
                  blurRadius: 3.0,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                Shadow(
                  offset: Offset(-1.0, -1.0),
                  blurRadius: 8.0,
                  color: Color.fromARGB(125, 0, 0, 255),
                ),
              ],
            )),
        flexibleSpace: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[
                Color.fromARGB(255, 126, 65, 141),
                Color.fromARGB(255, 34, 14, 62)
              ])),
        ),
      ),
      body: Container(
        decoration: new BoxDecoration(
            gradient: new LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            Color.fromARGB(255, 34, 14, 62),
            Color.fromARGB(255, 126, 65, 141)
          ],
        )),
        child: Center(
            child: Column(
          children: <Widget>[
            Text('Choix :',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(2.0, 2.0),
                      blurRadius: 3.0,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    Shadow(
                      offset: Offset(-1.0, -1.0),
                      blurRadius: 8.0,
                      color: Color.fromARGB(125, 0, 0, 255),
                    ),
                  ],
                )),
            Container(
                margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                child: Text(
                    "Tu dois rentrer deux propositions et une sera aléatoirement choisie !",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Color.fromARGB(255, 0, 0, 0),
                        ),
                      ],
                    ))),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                  controller: myController,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 126, 65, 141)),
                      hintText: 'Proposition 1')),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                  controller: myController2,
                  style: TextStyle(fontSize: 20, color: Colors.white),
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      disabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(255, 126, 65, 141), width: 5),
                      ),
                      hintStyle: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 126, 65, 141)),
                      hintText: 'Proposition 2')),
            ),
            RaisedButton(
              onPressed: () {
                return showDialog(
                    context: context,
                    builder: (context) {
                      if (myController.text == '' || myController2.text == '') {
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.5),
                                child: new Text(
                                    'Il me faut deux propositions... 😬',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontSize: 18,
                                      shadows: <Shadow>[
                                        Shadow(
                                          offset: Offset(0, 0),
                                          blurRadius: 2.0,
                                          color: Color.fromARGB(255, 0, 0, 0),
                                        ),
                                      ],
                                    )))));
                      } else {
                        Random rnd = new Random();
                        var prop1 = myController.text;
                        var prop2 = myController2.text;
                        var choix = rnd.nextInt(2);
                        if (choix == 0) {
                          return (Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Align(
                                  alignment: Alignment(0, 0.5),
                                  child: Text('Je choisis $prop1 évidemment !',
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.white,
                                        fontSize: 18,
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(0, 0),
                                            blurRadius: 2.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ],
                                      )))));
                        } else {
                          return (Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              child: Align(
                                  alignment: Alignment(0, 0.5),
                                  child: Text('Je choisis $prop2 évidemment !',
                                      style: TextStyle(
                                        decoration: TextDecoration.none,
                                        color: Colors.white,
                                        fontSize: 18,
                                        shadows: <Shadow>[
                                          Shadow(
                                            offset: Offset(0, 0),
                                            blurRadius: 2.0,
                                            color: Color.fromARGB(255, 0, 0, 0),
                                          ),
                                        ],
                                      )))));
                        }
                      }
                    });
              },
              textColor: Colors.white,
              padding: const EdgeInsets.all(0.0),
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      Color.fromARGB(255, 126, 65, 141),
                      Color.fromARGB(255, 34, 14, 62),
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('Faire un choix !',
                    style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
