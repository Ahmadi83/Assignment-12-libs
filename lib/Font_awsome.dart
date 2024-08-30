import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Font_page extends StatefulWidget {
  const Font_page({super.key});

  @override
  State<Font_page> createState() => _Font_pageState();
}

class _Font_pageState extends State<Font_page> {
  
   font(fonts){
     return
    Padding(
      padding: const EdgeInsets.only(left: 7,right: 7),
      child: FaIcon(fonts,size: 50,
        color: Color.fromRGBO(Random().nextInt(255), Random().nextInt(255), Random().nextInt(255),100),
      ),
    );

  }

  @override

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(backgroundColor: Colors.blue,
         title: Text('Some of Awsome Icons',style: TextStyle(fontSize: 30,color: Colors.white),),
        centerTitle: true,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('List Of Social Media Icons',style: TextStyle(fontSize: 30,color: Colors.red),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 font(FontAwesomeIcons.google),
                 font(FontAwesomeIcons.facebook),
                 font(FontAwesomeIcons.linkedin),
                 font(FontAwesomeIcons.twitter),
                 font(FontAwesomeIcons.telegram),
                 font(FontAwesomeIcons.instagram),
              ],),
              SizedBox(height: 30,),

              Text("Some of Pointers Icons",style: TextStyle(fontSize: 30,color: Colors.red),),

              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  font(FontAwesomeIcons.backward),
                  font(FontAwesomeIcons.forward),
                  font(FontAwesomeIcons.stop),
                  font(FontAwesomeIcons.pause),
                  font(FontAwesomeIcons.play),
                  font(FontAwesomeIcons.upDown),
                ],
              ),
              SizedBox(height: 30,),

              Text("Another Icons ",style: TextStyle(fontSize: 30,color: Colors.red),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  font(FontAwesomeIcons.accessibleIcon),
                  font(FontAwesomeIcons.addressCard),
                  font(FontAwesomeIcons.anchorCircleCheck),
                  font(FontAwesomeIcons.satelliteDish),
                  font(FontAwesomeIcons.heading),
                  font(FontAwesomeIcons.key),
                ],
              ),
              SizedBox(height: 25,),

              Text('Computer Hard Ware icons',style: TextStyle(fontSize: 25,color: CupertinoColors.destructiveRed),),
              Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                font(FontAwesomeIcons.keyboard),
                font(FontAwesomeIcons.computerMouse),
                font(FontAwesomeIcons.tv),
                font(FontAwesomeIcons.usb),
                font(FontAwesomeIcons.computer),
              ],
              ),

            ],
          )
        )
      ),
    );
  }
}
