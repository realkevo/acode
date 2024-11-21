//import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'dart:async';

import 'package:acoder/creation.dart';
import 'package:acoder/heda.dart';
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
      home: Testa(),
  //    Creation(),

     //Nyumbani(),
    );


  }
}

class Testa extends StatelessWidget{
  final whatsAppUrl = "https://wa.me/+254758536280";
  final String email = "acodedevelopers100@gmail.com";
  final String subject = "hello";
  final String body = "Service inquiry";

  void _sendMail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=$subject&body=$body',

    );
    if ( await
    canLaunchUrl(emailUri)){
      await launchUrl(emailUri);}
    else{
      throw 'could not load to mail';
    }
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
return
 SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Container(

        //Root Container
        decoration: BoxDecoration(

            image: DecorationImage(
                image: AssetImage(
                  "assets/acode.jpg",

                  //'https://d2gg9evh47fn9z.
                  // cloudfront.net/800px_COLOURBOX18042265.jpg',
                ),

                fit: BoxFit.fill)
        ),

        child: Padding(
          padding: const EdgeInsets.only(
              left: 8.0, right: 8.0, bottom: 3.0, top: 4),
          //this is root column
          child: Column(
            //this is root column
            children: [



              //header container
              Padding(
                padding: const EdgeInsets.all(3.0),
                child:  Header(),
              ),
              //header container









              SizedBox(height: 5,),
              Expanded(
                child: Container(
                  color: Colors.transparent,

                  child: Center(
                    child: SingleChildScrollView(
                      child: Center(
                        child: Column(
                          children: <Widget>[

                            Column(
                              children: [

                                // Text("Email or whatsapp us",
                                //  style: TextStyle(
                                //    fontSize: 12,
                                //   color: Colors.yellow,
                                //  fontWeight: FontWeight.normal),),
                                Container(
                                  color: Colors.transparent,

                                  child:   Center(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: <Widget>[
                                        Text(
                                          'About Us',
                                          style: TextStyle(
                                              fontSize: 20,
                                              decoration: TextDecoration.none,

                                              color: Colors.deepOrange,
                                              fontWeight: FontWeight.normal),),
                                        SizedBox(height: 10,),

                                        Center(
                                          child: Text(
                                            'Entrusted in Building \n\n'
                                                'and Deploying, \n\nsecure Robust readable code'
                                                '\n\nUsing futuristic, Frameworks \n\nand Development Tools.'
                                            ,
                                            style: TextStyle(
                                                decoration: TextDecoration.none,

                                                fontSize: 12,
                                                color: Colors.white,
                                                fontWeight: FontWeight.normal),
                                          ),
                                        ),





                                      ],),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Container(
                                  child: Row(
                                    mainAxisSize:MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      GestureDetector(
                                        child: Container(
                                          height: 16,
                                          child: Transform.scale(
                                              scale: 1,
                                              child:
                                              Image.asset('assets/whatapp.png')),
                                        ),
                                          onTap: () async {
                                            if (await  canLaunchUrl(Uri.parse(whatsAppUrl))){
                                              await launchUrl(Uri.parse(whatsAppUrl),
                                                mode:
                                                LaunchMode.externalApplication,
                                                //browse in browser)

                                              );
                                            }
                                            else throw 'oops! try again later';
                                          }

                                      ),
                                      SizedBox(width: 70,),
                                      Text("<<< WHATSAPP OR EMAIL US >>>",
                                        style: TextStyle(
                                            decoration: TextDecoration.none,

                                            fontSize: 12,
                                            color: Colors.green,
                                            fontWeight: FontWeight.normal),
                                      ),
                                      SizedBox(width: 70,),

                                      GestureDetector(
                                        child: Container(
                                          height: 20,
                                          child: Transform.scale(
                                              scale: 1,
                                              child:
                                              Image.asset('assets/gg.png')
                                          ),
                                        ),
                                        onTap: _sendMail,
                                      ),

                                    ],
                                  ),
                                ),

                              ],
                            ),
                            SizedBox(height: 20,),

                            Container(
                              color: Colors.transparent,
                              child: Center(
                                child: Column(
                                  children: <Widget>[
                                    Text(
                                      'Our Services',
                                      style: TextStyle(
                                          fontSize: 20,
                                          decoration: TextDecoration.none,

                                          color: Colors.deepOrange,
                                          fontWeight: FontWeight.normal),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),


                                    Center(

                                      child: Text(
                                        'Android Development\n\nIos Development'
                                            '\n\nWeb Development '
                                            '\n \nWeb design \n \nData BackUp and Retrieval'
                                            '\n\nNetwork Audit and Pentesting',
                                        style: TextStyle(
                                            decoration: TextDecoration.none,

                                            fontSize: 11,
                                            color: Colors.white,
                                            fontWeight: FontWeight.normal),
                                      ),

                                    ),


                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 10,),

                            Container(
                              color: Colors.transparent,
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    'Tools and Frameworks',
                                    style: TextStyle(
                                        fontSize: 20,
                                        decoration: TextDecoration.none,

                                        color: Colors.deepOrange,
                                        fontWeight: FontWeight.normal),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Center(
                                    child: Column(

                                      children: <Widget>[
                                        Center(
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 68.0),
                                            child: Text(
                                              'Flutter and Dart Programming Language \n\n Android Studio'
                                                  '\n\nGit, Github \n\n'
                                                  ''
                                                  ' Python and Django \n\n'
                                                  ''
                                                  ' Kotlin, JetPack Compose CrossPlatform'
                                                  '\n\n'
                                                  ''
                                                  'Figma\n\n'
                                                  ' Firebase/GCP/AWS\n\n'
                                                  'Docker, Kubernattes',
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  decoration: TextDecoration.none,

                                                  color: Colors.white,
                                                  fontWeight: FontWeight.normal),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10,),




                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

      ),


);
  //Root Container



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
          fontSize: 14,
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
