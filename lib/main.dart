import 'package:asignment_12/english_word.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import  'Font_awsome.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


void main() {
  runApp(MaterialApp(
    builder: FToastBuilder(),
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List number = ['Awsome Icons','Generate Word', 3, 4, 5, 6, 7, 8, 9, 10];

  List icons =[FontAwesomeIcons.icons,Icons.wordpress_rounded,Icons.share,Icons.message,Icons.zoom_in,
    Icons.details,Icons.show_chart_sharp,Icons.shape_line,Icons.add_a_photo,Icons.add];

  List color = [Colors.blue,Colors.red,Colors.green,Colors.purpleAccent,Colors.pinkAccent,
    Colors.blueGrey,Colors.blueGrey,Colors.purple,Colors.yellow,Colors.orangeAccent];


List pages =[Font_page(),Word()];

  Showtoast(){

    Fluttertoast.showToast(
      msg: 'Welcome To New Library ',
      toastLength: Toast.LENGTH_SHORT,
      fontSize: 20,
      backgroundColor: Colors.green,
      gravity: ToastGravity.BOTTOM,
      textColor: Colors.white,
    );
  }



  @override
  Widget build(
      BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Libraries',style: TextStyle(fontSize: 30,color: Colors.white),),
        leading: IconButton(onPressed: (){

          Alert(context: context,
            type: AlertType.warning,
            title: ' Exit',
            desc: 'Do you want to Exit',
            buttons: [
              DialogButton(
                color: Colors.red,
                  splashColor: Colors.green,
                  child: Text('Yes',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                  onPressed: (){
                SystemNavigator.pop();
              }
              ),
            DialogButton(
              color: Colors.blue,
                splashColor: Colors.yellow,
                child: Text('No',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),),
                onPressed: (){
                Navigator.pop(context);
                },)
            ],

          ).show();


        },
            icon: Icon(Icons.exit_to_app)),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),

      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8,
            childAspectRatio: 1,
            mainAxisSpacing: 5,
          ),
          itemBuilder: (context, index) {
            return GridTile(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                    GestureDetector(onTap: (){
                      Showtoast();
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return pages[index];
                      }));
                    },
                      child: Container(height: 100, width: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: color[index],),
                        child:
                          Center(
                            child: Column(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(icons[index],size: 60,color: Colors.white,),
                                SizedBox(height: 15,),
                               Text('${number[index]}',style: TextStyle(fontSize: 23,color: Colors.white),),

                                // ElevatedButton(onPressed: (){
                                //   showDialog(context: context, builder: (context) {
                                //    return AlertDialog(
                                //       actions: [
                                //         TextButton(onPressed: (){
                                //           Navigator.of(context).pop();
                                //         },
                                //             child: Text('Close'))
                                //       ],
                                //       title: Text('Are You Want To close App'),
                                //     );
                                //   },);
                                // },
                                //     child: Text('click')),

                          ],
                        )),
                      ),
                    )
            ));
          },
          itemCount: 10,
          scrollDirection: Axis.vertical,
        ),
      ),
    );
  }
}
