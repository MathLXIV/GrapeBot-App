import 'package:flutter/material.dart';

class Infos extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Infos',
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
              Text('Infos :',
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
                  child:
                      Text("Donne les informations relatives à l'application.",
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
              Text('\n'),
              Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text(
                      "Cette application a été créé par Math (ou MathLXIV#5173 sur discord) sans but précis, sur la base de délires venant d'un groupe d'amis nommé \"c'est quoi\" et du serveur de la Néo FNaF-Team (ou NFT), les commandes viennent d'un bot discord nommé GrapeBot, d'abord créé en Python puis il a eu une V2 en JavaScript. Cette application a été réalisée suite au décès du bot, en Flutter. Elle ne contient pas de virus, ne récupère pas vos données/informations, elle ne demande aucune autorisation. Si l'appli n'est pas sur le Play Store c'est parce que j'ai la flemme d'acheter une license et si vous constatez le moindre bug, ou si vous voulez me faire des suggestions contactez moi sur discord, je me ferais un plaisir de vous répondre !",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        shadows: <Shadow>[
                          Shadow(
                            offset: Offset(2.0, 2.0),
                            blurRadius: 3.0,
                            color: Color.fromARGB(255, 0, 0, 0),
                          )
                        ],
                      ))),
              Text('\n'),
              Container(
                  margin: const EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Text("Version : 1.1.1",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
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
                ))),
            ],
          )),
        ));
  }
}
