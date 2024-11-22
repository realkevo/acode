//import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'dart:async';

import 'package:acoder/heda.dart';
import 'package:acoder/homepage.dart';
import 'package:acoder/mobileBody.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
//import 'package:intl/intl.dart';
//import  'package:intl/date_symbol_data_local.dart';


//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Acode.co.ke',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset assets to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
      //Testa(),
  //    Creation(),

     //Nyumbani(),
    );


  }
}





class FlutterTimeDemo extends StatefulWidget{
  @override
  _FlutterTimeDemoState createState()=> _FlutterTimeDemoState();

}


class _FlutterTimeDemoState extends State<FlutterTimeDemo>
{
  late String _timeString;

  @override
  void initState(){
    _timeString = "${DateTime.now().year} : ${DateTime.now().month} :"
        "${DateTime.now().day} : ${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    Timer.periodic(Duration(seconds:1), (Timer t)=>_getCurrentTime());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
 alignment: Alignment.topRight,     child: Container(
        decoration: BoxDecoration(
        /*  border:  Border(
            left: BorderSide(


              color: Colors.blueAccent,
              width: 2,),
            right: BorderSide(


              color: Colors.blueAccent,
              width: 2,),

          ),*/
        ),

        child: Text(_timeString,style:
        TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 10,
          decoration: TextDecoration.none,

          color: Colors.lightGreenAccent,
        ),
          ),
      ),
    );

  }

  void _getCurrentTime()  {
    setState(() {
      _timeString = "${DateTime.now().year} : ${DateTime.now().month} :"
          " ${DateTime.now().day} : ${DateTime.now().hour} : ${DateTime.now().minute} :${DateTime.now().second}";
    });
  }
}
