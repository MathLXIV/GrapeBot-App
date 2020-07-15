import 'dart:math';
import 'package:flutter/material.dart';

// Sexstests truc chiant
class Sextests extends StatefulWidget {
  @override
  _SextestsState createState() => _SextestsState();
}

class _SextestsState extends State<Sextests> {
  // Create a text controller and use it to retrieve the current value
  // of the TextField.
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
    print("Sextest's text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sextests',
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
            Text('Sextests :',
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
                    "Tu peux choisir si tu veux rentrer un nom ou pas, ensuite appuie sur le bouton et laisse faire la magie de l'aléatoire !\n",
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
                      hintText: 'Nom (optionnel)'),
                )),
            RaisedButton(
              onPressed: () {
                Random rnd = new Random();
                var pourcentg = rnd.nextInt(101);
                var pourcentp = rnd.nextInt(101);
                var pourcentz = rnd.nextInt(101);
                var pourcentn = rnd.nextInt(101);
                var pourcenti = rnd.nextInt(101);
                var pourcents = rnd.nextInt(101);
                return showDialog(
                    context: context,
                    builder: (context) {
                      if (myController.text == '') {
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.5),
                                child: new Text(
                                    'Mon analyse m\'indique que tu es :\nà $pourcentg% gay,\nà $pourcentp% pédophile,\nà $pourcentz% zoophile,\nà $pourcentn% nécrophile,\nà $pourcents% scatophile,\net que tu as $pourcenti% de chances de faire de l\'inceste !',
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
                        var name = myController.text;
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.5),
                                child: Text(
                                    'Mon analyse m\'indique que ' +
                                        name +
                                        ' est :\nà $pourcentg% gay,\nà $pourcentp% pédophile,\nà $pourcentz% zoophile,\nà $pourcentn% nécrophile,\nà $pourcents% scatophile,\net qu\'il/elle a $pourcenti% de chances de faire de l\'inceste !',
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
                child: const Text('Faire le test !',
                    style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
