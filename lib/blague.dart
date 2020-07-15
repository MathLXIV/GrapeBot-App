import 'dart:math';
import 'package:flutter/material.dart';

class Blague extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Blague',
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
              Text('Blague :',
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
                      "Appuie sur le bouton et GrapeBot te feras une blague tres nulle",
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
                  const blagues = [
                    "Deux arabes sont dans une tour, lequel saute en premier ?\n\nLa tour !",
                    "Quel bruit fait un train dans Pokémon ?\n\nPika-tchou-tchou !",
                    "Qu'est-ce qui est vert et qui attends ?\n\nUn scout sur les genoux d'un prêtre !",
                    "Quelle est la différence entre les épinards et la sodomie ?\n\nMême avec du beurre les enfants n'aiment pas ça !",
                    "Les petites filles, c'est comme les boîtes de nuit branchées...\nC'est difficile d'y rentrer, mais une fois qu'on y est, c'est le pied !",
                    "Quel est le point commun entre une dinde et une petite fille ?\n\nQuand tu lui écartes les cuisses, ça a tendance à craquer.",
                    "Qu'est-ce qui a pu faire des traces de griffes sur un comptoir ? \n\nUn Juif qui a pris sa monnaie !",
                    "C'est l'histoire d'un père qui fait la cuisine, il demande à son fils :\n\"Fiston, tu sais où il est le truc pour pour éplucher les légumes ?\"\nEt son fiston il lui dit:\n\"Hé mais elle t'a quitté y'a une semaine papa...\"",
                    "\"Knock knock\n- Who's there ?\n- Doctor\n- Doctor who ?\"",
                    "Tu connais l'histoire de paf le chien ?\nUn chien traverse la route puis ***PAF***  le chien..."
                  ];
                  var blague = blagues[rnd.nextInt(blagues.length)];
                  return showDialog(
                      context: context,
                      builder: (context) {
                        return Container(margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.2),
                                child: new Text('$blague',
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  color: Colors.white,
                                  fontSize: 20,
                                  shadows: <Shadow>[
                                    Shadow(
                                      offset: Offset(0, 0),
                                      blurRadius: 2.0,
                                      color: Color.fromARGB(255, 0, 0, 0),
                                    ),
                                  ],
                                ))));
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
                  child: const Text('Fais-moi une blague !',
                      style: TextStyle(fontSize: 20)),
                ),
              )
            ],
          )),
        ));
  }
}
