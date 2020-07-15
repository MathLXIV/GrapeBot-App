import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'sextests.dart';
import 'propagande.dart';
import 'choix.dart';
import 'decrismoi.dart';
import 'randomdude.dart';
import 'pfde.dart';
import 'blague.dart';
import 'antidepresseur.dart';

import 'infos.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'GrapeBot App',
      debugShowCheckedModeBanner: false,
      home: GBApp(),
    );
  }
}

class GBApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset(
              'assets/GrapeBot.png',
              fit: BoxFit.contain,
              height: 45,
            ),
            Text(' GrapeBot App',
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
                
          ],
        ),
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
          child: GridView.count(
            primary: true,
            padding: const EdgeInsets.all(40),
            crossAxisSpacing: 40,
            mainAxisSpacing: 40,
            crossAxisCount: 2,
            children: <Widget>[
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Sextests()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                        
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Sextests",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
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
                    ),
                  )),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Propagande()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Propagande",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
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
                    ),
                  )),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Choix()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Choix",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
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
                    ),
                  )),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DecrisMoi()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Décris-moi",
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
                    ),
                  )),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RandomDude()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Random\nDude",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
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
                    ),
                  )),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PileOuFaceDe()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Pile ou Face\n/\nDé",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 21,
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
                    ),
                  )),
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Blague()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Blague",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
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
                    ),
                  )),
                  RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AntiDepresseur()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Anti\nDépresseur",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
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
                    ),
                  )),

              //
              RawMaterialButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Infos()),
                    );
                  },
                  fillColor: Colors.transparent,
                  child: Container(
                    decoration: new BoxDecoration(
                        gradient: new LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Color.fromARGB(255, 126, 65, 141),
                        Color.fromARGB(150, 34, 14, 62),
                      ],
                    )),
                    padding: const EdgeInsets.all(8),
                    child: Center(
                      child: Text("Infos",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
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
                    ),
                  )),
            ],
          )),
    );
  }
}
