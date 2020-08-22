import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'default_layout.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    String ironManDesc='Genius. Billionaire. Playboy. Philanthropist. Tony Stark\'s confidence is only matched by his high-flying abilities as the hero called Iron Man.';
    String captainAmericaDesc='Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers.';
    String hulkDesc='Dr. Bruce Banner lives a life caught between the soft-spoken scientist he’s always been and the uncontrollable green monster powered by his rage.';
    String thorDesc='Thor OdinsonThor. The son of Odin uses his mighty abilities as the God of Thunder to protect his home Asgard and planet Earth alike.';
    String antManDesc='Overcoming his criminal past, Scott Lang follows in the tiny, yet mighty, footsteps of his predecessor as the size-changing hero known as Ant-Man!';
    final pages = [
      //DefaultLayout() can be found in default_layout.dart
      DefaultLayout(
        title: 'Iron Man',
        description: ironManDesc,
        imageLink: 'images/ironMan.png',
        color: Color(0xff9B102F),
      ),
      DefaultLayout(
        title: 'Captain America',
        description: captainAmericaDesc,
        imageLink: 'images/kaftanAmerica.png',
        color: Color(0xff013174),
      ),
      DefaultLayout(
        title: 'HULK',
        description: hulkDesc,
        imageLink: 'images/hulk.png',
        color: Color(0xff006A39),
      ),
      DefaultLayout(
        title: 'THOR',
        description: thorDesc,
        imageLink: 'images/thor.png',
        color: Color(0xff000400),
      ),

    ];

    return SafeArea(
      child: Scaffold(
        body: Container(
          child: LiquidSwipe(
              pages: pages
          ),
        ),
      ),
    );
  }
}