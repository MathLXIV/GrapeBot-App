import 'dart:math';
import 'package:flutter/material.dart';

// Pile ou face / dé truc chiant
class PileOuFaceDe extends StatefulWidget {
  @override
  _PileOuFaceDeState createState() => _PileOuFaceDeState();
}

class _PileOuFaceDeState extends State<PileOuFaceDe> {
  final myController = TextEditingController();

  @override
  void initState() {
    super.initState();

    myController.addListener(_saveLatestValue);
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the widget tree.
    // This also removes the _printLatestValue listener.
    myController.dispose();
    super.dispose();
  }

  _saveLatestValue() {
    print("DecrisMoi's text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pile ou Face / Dé',
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
            Text('Dé :',
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
                    "Tu peux changer ou non le nombre de faces, puis appuyer sur le bouton et ça simulera un lancé de dé et te donnera le résultat !(le nombre de faces par défaut est 6)",
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
                      hintText: 'Nombre de faces (optionnel)'),
                )),
            RaisedButton(
              onPressed: () {
                Random rnd = new Random();
                return showDialog(
                    context: context,
                    builder: (context) {
                      if (myController.text == '') {
                        var resultat = rnd.nextInt(6);
                        resultat = resultat + 1;
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Center(
                                child: new Text('Résultat : $resultat !',
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
                        var resultat =
                            rnd.nextInt(int.parse(myController.text));
                        resultat = resultat + 1;
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Center(
                                child: Text('Résultat : $resultat !',
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
                child: const Text('Simuler le lancé !',
                    style: TextStyle(fontSize: 20)),
              ),
            ),
            Text('\n\n\n\n\n\n'),
            Text('Pile ou Face :',
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
                child: Text("Simule un lancer de Pile ou Face !",
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
            RaisedButton(
              onPressed: () {
                Random rnd = new Random();
                var face = rnd.nextInt(2);
                return showDialog(
                    context: context,
                    builder: (context) {
                      if (face == 0) {
                        var resultat = rnd.nextInt(6);
                        resultat = resultat + 1;
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.7),
                                child: new Text('Tu as obtenu Pile !',
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
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.7),
                                child: Text('Tu as obtenu Face !',
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
                child: const Text('Simuler le lancé !',
                    style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
