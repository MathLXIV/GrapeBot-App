import 'dart:math';
import 'package:flutter/material.dart';

class RandomDude extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Random Dude',
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
              Text('Random Dude :',
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
                      "Fait apparaître un \"Dude\" aléatoire avec des descriptions !",
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
                  const images = [
                    'assets/GrapeBot.png',
                    'assets/Dude_Etika.png',
                    'assets/Dude_Orange.png',
                    'assets/Dude_Squalala.png',
                    'assets/Dude_Tomato.png',
                    'assets/Dude_Water.png',
                    'assets/CandyDude.png',
                    'assets/Dude_Wow.png',
                    'assets/OliveDude.png',
                    'assets/Dude.png',
                    'assets/Dude_Reggie.png',
                    'assets/Dude_Knife.png',
                    'assets/Dude_Nazi.png',
                    'assets/Hype_Dude.png',
                    'assets/Lil_Dude.png',
                  ];
                  const titres = [
                    'GrapeBot :',
                    'EtikaDude :',
                    'OrangeDude :',
                    'SqualalaDude :',
                    'TomatoDude :',
                    'WaterDude :',
                    'CandyDude :',
                    'WowDude :',
                    'OliveDude :',
                    'GrapeDude :',
                    'ReggieDude :',
                    'KnifeDude :',
                    'NaziDude :',
                    'HypeDude :',
                    'LilDude :',
                  ];

                  const descriptions = [
                    "Le dieu universel, créé à partir de GrapeDude, il en est une version améliorée, il a de nombreux pouvoirs et domine le monde.",
                    "Un Dude venu tout droit d'Amérique, il a des réactions facinantes et est un grand fan de Nintendo.",
                    "Un Dude orangé. A-t-il un lien avec naatikata ?",
                    "Un Dude venu tout droit de la Philips CDI, il raconte souvent qu'il est partit, quoi que cela veuille dire. ",
                    "Un Dude aussi rouge que le feu. Mais oubliez-le, depuis un certain accident il ne faut plus parler de lui. A-t-il un lien avec Enzoul ?",
                    "Un Dude bleu comme le ciel, mais en plus foncé.",
                    "Un Dude fait de... bonbons? En tout cas il a la couleur d'une belle barbe à papa.",
                    "Lorsque GrapeDude atteint sa puissance maximale... juste... wow...",
                    "Un Dude vert, comme un appéritif bien connu.",
                    "L'original, on raconte que tous les autres Dudes ont été créés à partir de lui.",
                    "Un Dude venu des locaux de Nintendo USA, un combattant aguéri, il dit souvent que son corps est prêt, même si on sait pas trop ce que ça signifie.",
                    "GrapeDude a été apperçu avec un couteau. Serait-ce lui l'homme derrière le massacre ?",
                    "On ne sait pas si il s'agit d'un seul Dude difforme ou de plusieurs Dudes, tout ce qu'on sait c'est que si tu portes une étoile, tu es encouragé(e) à courir.",
                    "On l'appelle aussi CaptainDude, on ne sait pas trop si c'est une fusion ou une immitation du Captain Hype, mais il fait peur et sa puissance est indeterminée.",
                    "Un nouveau Dude, très puissant. Il aurait un lien avec Lil Cal, un personnage du webcomic Homestuck ainsi qu'avec un certain Black M.",


                  ];
                  var index = rnd.nextInt(images.length);
                  var image = images[index];
                  var titre = titres[index];
                  var description = descriptions[index];
                  return showDialog(
                      context: context,
                      builder: (context) {
                        return Container(
                            child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text('$titre',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
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
                                )),
                            Image(image: AssetImage(image)),
                            Container(
                                margin: const EdgeInsets.only(
                                    left: 20.0, right: 20.0),
                                child: Text('$description',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
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
                                    ))),
                          ],
                        ));
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
                  child: const Text('Fait apparaître un Dude !',
                      style: TextStyle(fontSize: 20)),
                ),
              )
            ],
          )),
        ));
  }
}
