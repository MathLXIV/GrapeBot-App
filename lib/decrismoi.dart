import 'dart:math';
import 'package:flutter/material.dart';

// Décris-moi truc chiant
class DecrisMoi extends StatefulWidget {
  @override
  _DecrisMoiState createState() => _DecrisMoiState();
}

class _DecrisMoiState extends State<DecrisMoi> {
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
        title: Text('Décris-moi',
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
            Text('Décris-moi :',
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
                    "Tu peux choisir si tu veux rentrer un nom ou pas, ensuite appuie sur le bouton et 3 adjectifs te seront aléatoirement donnés ! (attention il peut y avoir des doublons)",
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
                const adjectifs = [
                  "beau/belle",
                  "bonne",
                  "con(ne)",
                  "un(e) gros(se) con(ne)",
                  "intelligent(e)",
                  "stupide",
                  "un(e) abruti(e)",
                  "mature",
                  "immature",
                  "un(e) fdp",
                  "un(e) énorme fdp",
                  "bg",
                  "drôle",
                  "fort(e)",
                  "pd",
                  "un(e) enculé(e)",
                  "incroyable",
                  "fou(folle)",
                  "banal(e)",
                  "spécial(e)",
                  "séduisant(e)",
                  "repoussant(e)",
                  "intéressant(e)",
                  "innintéressant(e)",
                  "cool",
                  "débile",
                  "dieu",
                  "le sang",
                  "malade fou",
                  "tarré(e)",
                  "impatient(e)",
                  "patient(e)",
                  "pénible",
                  "trop cool",
                  "trop bg",
                  "presque aussi bg que les membres de \"c'est quoi\"",
                  "le prince des Saiyans",
                  "relativement peu intéressant",
                  "relativement bg",
                  "relativement cool",
                  "très cool",
                  "très bg",
                  "un(e) traître(esse)",
                  "fidèle",
                  "infidèle",
                  "formidable",
                  "le 100",
                  "chou",
                  "aimable",
                ];
                var adj1 = adjectifs[rnd.nextInt(adjectifs.length)];
                var adj2 = adjectifs[rnd.nextInt(adjectifs.length)];
                var adj3 = adjectifs[rnd.nextInt(adjectifs.length)];
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
                                    'Selon moi tu es $adj1, $adj2 et $adj3 !',
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
                                    'Selon moi $name est $adj1, $adj2 et $adj3 !',
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
                child:
                    const Text('Décris-moi !', style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
