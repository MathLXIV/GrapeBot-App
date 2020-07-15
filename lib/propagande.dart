import 'dart:math';
import 'package:flutter/material.dart';

// Propagande truc chiant
class Propagande extends StatefulWidget {
  @override
  _PropagandeState createState() => _PropagandeState();
}

class _PropagandeState extends State<Propagande> {
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
    print("Propagande's text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Propagande',
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
            Text('Propagande :',
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
                    "Tu dois entrer un nom, ensuite appuie sur le bouton et l'aléatoire lui fera des phrases de propagande aléatoires ! (il peut y avoir des doublons)",
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
                      hintText: 'Nom'),
                )),
            RaisedButton(
              onPressed: () {
                return showDialog(
                    context: context,
                    builder: (context) {
                      if (myController.text == '') {
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.2),
                                child: new Text('Il me faut un nom... 😬',
                                    style: TextStyle(
                                      decoration: TextDecoration.none,
                                      color: Colors.white,
                                      fontSize: 24,
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
                        Random rnd = new Random();
                        var phrases = [
                          " est le/la plus fort(e) !",
                          " au pouvoir !!",
                          " vas vous écraser !",
                          " gouvernera le monde !",
                          " sera le/la maître(esse) du monde et des chocolatines !",
                          ", le/la candidat(e) du peuple !!",
                          ", jeune et dynamique !",
                          " a fait top 1 !",
                          " est encore plus fort(e) que Thanos !",
                          " will make the world great again !",
                          " a plus d'abonnés que Pewdiepie !",
                          " dépasse les Dieux",
                          " c'est plus fort que toi !",
                          " a battu Poutine aux échecs !",
                          " a battu Chuck Norris au bras de fer !",
                          " a battu Kim Jong-un au bras de fer chinnois !",
                          " est la réponse a la vie !",
                          " a baisé ta femme/ ton homme !",
                          ", ilé/ellé tro bo/bèl !",
                          ", le/la s des s !",
                          " est ton père/ ta mère !",
                          " is over 9000..!",
                          ", comment penses-tu pouvoir lui échapper si il/elle est déjà là ?",
                          " est immunisé au corona.",
                          ", si il/elle te touche, tu as le sida !",
                          " est le/la plus bg des bg !",
                          " est le/la cool-maire de CoolVille !",
                          ", il/elle vous guérira de tous vos maux !",
                          " a trouvé le vaccin pour le Covid 19 !",
                          " servi(e) froid(e).",
                          " succulé(e) grassement.",
                          " did nothing wrong !",
                          " est excessivement bgcool !",
                          " le sang de la veine !"
                        ];
                        var p1 = phrases[rnd.nextInt(phrases.length)];
                        var p2 = phrases[rnd.nextInt(phrases.length)];
                        var p3 = phrases[rnd.nextInt(phrases.length)];
                        var p4 = phrases[rnd.nextInt(phrases.length)];
                        var p5 = phrases[rnd.nextInt(phrases.length)];
                        var p6 = phrases[rnd.nextInt(phrases.length)];
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.5),
                                child: Text(
                                    '$name$p1\n$name$p2\n$name$p3\n$name$p4\n$name$p5\n$name$p6',
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
                child: const Text('Faire les phrases !',
                    style: TextStyle(fontSize: 20)),
              ),
            )
          ],
        )),
      ),
    );
  }
}
