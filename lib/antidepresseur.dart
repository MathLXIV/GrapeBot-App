import 'dart:math';
import 'package:flutter/material.dart';

// Décris-moi truc chiant
class AntiDepresseur extends StatefulWidget {
  @override
  _AntiDepresseurState createState() => _AntiDepresseurState();
}

class _AntiDepresseurState extends State<AntiDepresseur> {
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
    print("AntiDepresseur's text field: ${myController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anti Dépresseur',
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
            Text('Anti Dépresseur:',
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
                    "Un coup de mou ? Tu peux choisir si tu veux rentrer ton nom ou pas, ensuite appuie sur le bouton et laisse GrapeBot te dire à quel point tu es bg !(un mélange de Décris-moi et de Propagande, mais avec seulement du positif !)",
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
                  "bonne (oui même si t'es pas une fille)",
                  "intelligent(e)",
                  "mature",
                  "bg",
                  "drôle",
                  "fort(e)",
                  "incroyable",
                  "un peu foufou (ou fofolle)",
                  "spécial(e)",
                  "séduisant(e)",
                  "intéressant(e)",
                  "cool",
                  "dieu",
                  "le sang",
                  "patient(e)",
                  "trop cool",
                  "trop bg",
                  "presque aussi bg que les membres de \"c'est quoi\"",
                  "le prince des Saiyans",
                  "très cool",
                  "très bg",
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
                        var phrases = [
                          "Tu es le/la plus fort(e) !",
                          "Tu gouverneras le monde !",
                          "Tu sera le/la maître(esse) du monde et des chocolatines !",
                          "Tu es le/la candidat(e) du peuple !!",
                          "Tu es jeune et dynamique !",
                          "Tu as fait top 1 !",
                          "Tu es est encore plus fort(e) que Thanos !",
                          "You will make the world great again !",
                          "Tu as plus d'abonnés que Pewdiepie !",
                          "Tu dépasses les Dieux",
                          "Tu as battu Poutine aux échecs !",
                          "Tu as battu Chuck Norris au bras de fer !",
                          "Tu as battu Kim Jong-un au bras de fer chinnois !",
                          "Tu es la réponse a la vie !",
                          "Tu é tro bo/bèl !",
                          "Tu es le/la s des s !",
                          "You are over 9000..!",
                          "Comment pensent-ils pouvoir t'échapper si tu es déjà là ?",
                          "Tu es immunisé au corona.",
                          "Tu es le/la plus bg des bg !",
                          "Tu es le/la cool-maire de CoolVille !",
                          "Tu as trouvé le vaccin pour le Covid 19 !",
                          "Tu es est excessivement bgcool !",
                          "Tu es le sang de la veine !"
                        ];
                        var p1 = phrases[rnd.nextInt(phrases.length)];
                        var p2 = phrases[rnd.nextInt(phrases.length)];
                        var p3 = phrases[rnd.nextInt(phrases.length)];
                        var messages = [
                          "N'oublie jamais, tu es vraiment bg ! Genre sincèrement !",
                          "N'oublie jamais, tu es vraiment cool ! Genre sincèrement !",
                          "N'oublie jamais, tu es vraiment le meilleur (ou la meilleure) ! Genre sincèrement !",
                          "Sans déconner, tu ne mérites pas de déprimer ! Tu es tellement génial(e) !!",
                          "Vraiment, parfois c'est dur, mais je sais que tu tiendras le coup bg !",
                          "Je souhaite de tout coeur que tu te rétablisses !",
                          "Hé, non tu ne manques pas d'amis, tu m'as moi !",
                          "Je t'aime ! Si si, c'est vrai ! (J'ai pas dit dans quel sens)",
                          "Tu es indéniablement le sang, un point c'est tout.",
                          "Yo, tu sais à quel point tu es une personne exceptionnelle ? Maintenant, oui.",
                          "Si tu as tenu jusque là c'est que tu es fort(e), alors ne lache rien ! Tu vas y arriver !"
                        ];
                        var message = messages[rnd.nextInt(messages.length)];
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.5),
                                child: new Text(
                                    'Sérieux, tu es $adj1, $adj2 et $adj3, ne l\'oublie jamais !\n\n$p1\n$p2\n$p3\n\n$message\nEt ne fais pas de "bétise" ! ;)',
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
                        var phrases = [
                          "tu es le/la plus fort(e) !",
                          "tu gouverneras le monde !",
                          "tu sera le/la maître(esse) du monde et des chocolatines !",
                          "tu es le/la candidat(e) du peuple !!",
                          "tu es jeune et dynamique !",
                          "tu as fait top 1 !",
                          "tu es est encore plus fort(e) que Thanos !",
                          "you will make the world great again !",
                          "tu as plus d'abonnés que Pewdiepie !",
                          "tu dépasses les Dieux",
                          "tu as battu Poutine aux échecs !",
                          "tu as battu Chuck Norris au bras de fer !",
                          "tu as battu Kim Jong-un au bras de fer chinnois !",
                          "tu es la réponse a la vie !",
                          "tu é tro bo/bèl !",
                          "tu es le/la s des s !",
                          "you are over 9000..!",
                          "comment pensent-ils pouvoir t'échapper si tu es déjà là ?",
                          "tu es immunisé au corona.",
                          "tu es le/la plus bg des bg !",
                          "tu es le/la cool-maire de CoolVille !",
                          "tu as trouvé le vaccin pour le Covid 19 !",
                          "tu es est excessivement bgcool !",
                          "tu es le sang de la veine !"
                        ];
                        var p1 = phrases[rnd.nextInt(phrases.length)];
                        var p2 = phrases[rnd.nextInt(phrases.length)];
                        var p3 = phrases[rnd.nextInt(phrases.length)];
                        var messages = [
                          "N'oublie jamais $name, tu es vraiment bg ! Genre sincèrement !",
                          "N'oublie jamais $name, tu es vraiment cool ! Genre sincèrement !",
                          "N'oublie jamais $name, tu es vraiment le meilleur (ou la meilleure) ! Genre sincèrement !",
                          "Sans déconner $name tu ne mérites pas de déprimer ! Tu es tellement génial(e) !!",
                          "Vraiment $name, parfois c'est dur, mais je sais que tu tiendras le coup bg !",
                          "$name, je souhaite de tout coeur que tu te rétablisses !",
                          "Hé $name, non tu ne manques pas d'amis, tu m'as moi !",
                          "Je t'aime $name! Si si, c'est vrai ! (J'ai pas précisé dans quel sens)",
                          "$name tu es indéniablement le sang, un point c'est tout.",
                          "Yo $name, tu sais à quel point tu es une personne exceptionnelle ? Maintenant, oui.",
                          "Si tu as tenu jusque là $name c'est que tu es fort(e), alors ne lache rien ! Tu vas y arriver !"
                        ];
                        var message = messages[rnd.nextInt(messages.length)];
                        return (Container(
                            margin:
                                const EdgeInsets.only(left: 20.0, right: 20.0),
                            child: Align(
                                alignment: Alignment(0, 0.5),
                                child: Text(
                                    'Sérieux, $name, tu es $adj1, $adj2 et $adj3, ne l\'oublie jamais !\n\n$name, $p1\n$name, $p2\n$name, $p3\n\n$message\nEt ne fais pas de "bétise" ! ;)',
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
                      Colors.purple,
                      Colors.indigo,
                      Colors.blue,
                      Colors.green,
                      Colors.yellow,
                      Colors.orange,
                      Colors.red,
                    ],
                  ),
                ),
                padding: const EdgeInsets.all(10.0),
                child: const Text('Remonte-moi le moral !',
                    style: TextStyle(fontSize: 20, shadows: <Shadow>[
                      Shadow(
                        offset: Offset(0, 0),
                        blurRadius: 2.0,
                        color: Color.fromARGB(255, 0, 0, 0),
                      )
                    ])),
              ),
            )
          ],
        )),
      ),
    );
  }
}
