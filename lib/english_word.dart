import 'dart:math';

import 'package:english_words/english_words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class Word extends StatefulWidget {
  const Word({super.key});

  @override
  State<Word> createState() => _WordState();
}

class _WordState extends State<Word> {
  var generate = 'Welcome';

  Generateword() {
    final wordpaire = WordPair.random();
    setState(() {
      generate = wordpaire.asPascalCase;
    });
  }

  var generate1 = 'Hello';

  GenerateWord1() {
    final wordpaire1 = WordPair.random();
    setState(() {
      generate1 = wordpaire1.asPascalCase;
    });
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      home: Scaffold(

        floatingActionButton: FloatingActionButton(
          onPressed: () {
           Generateword();
            GenerateWord1();
          },
          backgroundColor: Colors.white,
          splashColor: Colors.green,
          child: Icon(FontAwesomeIcons.wordpressSimple,color: Colors.red,size: 30),
        ),

        appBar: AppBar(
          leading: IconButton(
            icon: Icon(Icons.home,color: Colors.red,size: 50,),
            onPressed: (){
            Navigator.pop(context);
          },),
          centerTitle: true,
          title: Text('Generate A Word',style: TextStyle(fontSize: 30,color: Colors.white),),
          backgroundColor: Colors.green,
        ),


        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                generate,
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(Random().nextInt(200), Random().nextInt(230), Random().nextInt(250), 10)),
              ),
              SizedBox(
                height: 30,
              ),
              Container(width: 250,height: 2,color: Colors.black,),
              SizedBox(
                height: 30,
              ),
              Text(
                generate1,
                style: TextStyle(fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color.fromRGBO(Random().nextInt(200), Random().nextInt(200), Random().nextInt(150), 100)),
              ),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Translate:'),


                ],
              ),

            ],


          ),
        ),

      ),
      );

  }
}
