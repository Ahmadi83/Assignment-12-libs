import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



class spin extends StatefulWidget {
  const spin({super.key});

  @override
  State<spin> createState() => _MyAppState();
}

class _MyAppState extends State<spin> {

  Spinkit(color,duratio){
  return  SpinKitFadingCircle(
      color: color,
      size: 60,
      duration: Duration(milliseconds: duratio),
    );}
  
  Spinkit_1(color,dutation){
    return SpinKitChasingDots(
      color: color,
      duration: Duration(milliseconds: dutation),
      size: 60,
    );}

  Spinkit_2(color,duration){
   return SpinKitHourGlass(
     color: color,
     duration: Duration(milliseconds: duration),
     size: 70,

   );}

  Spinkit_3(color,duration){
    return SpinKitPumpingHeart(
      color: color,
      duration: Duration(milliseconds: duration),
      size: 60,
    );}


  Spinkit_4(color,duration){
    return SpinKitSpinningCircle(
      color: color,
      duration: Duration(milliseconds: duration),
      shape:  BoxShape.circle,
      size: 60,
    );
  }


  
  
  
  @override
  Widget build(BuildContext context) {
    return 

      Scaffold(
       appBar: AppBar(
         backgroundColor: Colors.blue,
         title: Text('Spinkits',style: TextStyle(color: Colors.white,fontSize: 35),),
         centerTitle: true,
       ),
       body:
      Column(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spinkit(Colors.blue,500),
              SizedBox(width: 5,),
              Spinkit(Colors.green,1000),
              SizedBox(width: 5,),
              Spinkit(Colors.red,1500),
              SizedBox(width: 5,),
              Spinkit(Colors.brown,2000),
            ],
          ),
          Divider(color: Colors.black,thickness: 2,endIndent: 20,indent: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Spinkit_1(Colors.red,500),
              SizedBox(width: 15),
              Spinkit_1(Colors.blue,1000),
              SizedBox(width: 15,),
              Spinkit_1(Colors.green,1500),
              SizedBox(width: 15,),
              Spinkit_1(Colors.yellow,2000),
          ],),
          Divider(color: Colors.black,thickness: 2,endIndent: 20,indent: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spinkit_2(Colors.yellow,500),
            SizedBox(width: 15,),
            Spinkit_2(Colors.green,1000),
            SizedBox(width: 15,),
            Spinkit_2(Colors.blue,1500),
            SizedBox(width: 15,),
            Spinkit_2(Colors.red,2000),
          ],
          ),

          Divider(color: Colors.black,thickness: 2,endIndent: 20,indent: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spinkit_3(Colors.blue, 500),
            SizedBox(width: 15,),
            Spinkit_3(Colors.green, 1000),
            SizedBox(width: 15,),
            Spinkit_3(Colors.red, 1500),
            SizedBox(width: 15,),
            Spinkit_3(Colors.yellow, 2000),
            SizedBox(width: 15,),
          ],
          ),
          Divider(color: Colors.black,thickness: 2,endIndent: 20,indent: 20,),

          Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spinkit_4(Colors.greenAccent, 500),
            SizedBox(width: 15,),
            Spinkit_4(Colors.blue, 1000),
            SizedBox(width: 15,),
            Spinkit_4(Colors.purpleAccent, 1500),
            SizedBox(width: 15,),
            Spinkit_4(Colors.orangeAccent, 2000),
            SizedBox(width: 15,),
          ],
          ),


          SizedBox(height: 20,),

        ],
      ),

    );
  }
}
