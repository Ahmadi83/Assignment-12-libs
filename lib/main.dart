import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Font_Awsome.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List number = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  List icons =[FontAwesomeIcons.google,Icons.ac_unit,Icons.share,Icons.message,Icons.zoom_in,
    Icons.details,Icons.show_chart_sharp,Icons.shape_line,Icons.add_a_photo,Icons.add];

  List color = [Colors.blue,Colors.red,Colors.green,Colors.purpleAccent,Colors.pinkAccent,
    Colors.blueGrey,Colors.blueGrey,Colors.purple,Colors.yellow,Colors.orangeAccent];




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Libraries',style: TextStyle(fontSize: 30,color: Colors.white),),
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
                      Navigator.push(context, MaterialPageRoute(builder: (context){
                        return Font_page();
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
                                Icon(icons[index],size: 70,color: Colors.white,),
                                SizedBox(height: 15,),
                               Text('${number[index]}',style: TextStyle(fontSize: 30),),

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
                                //     child: Text('click'))
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
