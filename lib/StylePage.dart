import 'package:flutter/material.dart';
import 'StyleCrard.dart';
import 'Title.dart';

class Main_page extends StatelessWidget {
  const Main_page({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black87,
          body: Container(
            margin: const EdgeInsets.only(top: 20, bottom: 50),
            child: Column(
                children: const <Widget>[
                  Expanded(flex: 1, child: MarvelLogoWidget()),

                  Expanded(flex: 8, child: HeroScrollPanel()),
                ]),
          ),
        ),
      ),
    );
  }
}
