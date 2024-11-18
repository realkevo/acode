//import 'dart:nativewrappers/_internal/vm/lib/async_patch.dart';

import 'dart:async';

import 'package:acoder/creation.dart';
import 'package:flutter/material.dart';
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

class Nyumbani extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth =  MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.width;

    // TODO: implement build
    return       Container(
      height: 200,
      width: 200,
      //main header container

      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,

        children: <Widget>[

          //Title container
          Container(
            child: Center(
                child: Text("WELOME ON ACODE")
            ),
          ),

          //second container
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child:
                  Center(child:
                  Text("Acodedevelopers100@gmail.com"),
                  ),
                ),
                Container(
                  child:
                  Center(child:
                  Text("Readable, Code")),
                ),
                Container(
                  //Address
                  child: Center(child: Text("Mlolongo, Kenya")),
                ),

              ],
            ),

          ),

          //clock  container

          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: Text("Clock"),),
                Container(
                  child:  Text("Contact and Links"),
                ),



              ],
            ),
          ),

        ],
      ),
    );


    /*Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[

              Contacts(),
              Header(),

              Expanded(
                child: Container(
                  width: MediaQuery.of(context).size.width,




                  decoration: BoxDecoration(

                    color: Colors.transparent,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: SingleChildScrollView(
                        child: Column(
                          children: <Widget>[
                            AboutUs(),
                            SizedBox(height: 5,),
                            OurServices(),
                            SizedBox(height: 5,),
                            Description(),
                            SizedBox(height: 5,),



                          ],
                        ),
                      ),
                    ),
                  ),
              ),

              Links(),
            ],
          );*/




      //Mother container. Hold everything in the homepage
  }

}
class Testa extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    // TODO: implement build
return
  //Root Container

   Container(

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
           Container(
             width: MediaQuery.of(context).size.width,
               decoration: BoxDecoration(
                 color: Colors.transparent,
                 borderRadius: BorderRadius.circular(5),

               ),
               child: Row(
                 mainAxisSize: MainAxisSize.max,
                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                 children: <Widget>[
                   Container(
                     child: Column(
                         children: < Widget>[
                           Text("Acodedevelopers100@gmail.com",
                             style:      TextStyle(
                               fontSize: 14,
                               fontStyle: FontStyle.italic,
                               color: Colors.white,

                             ),),
                           Text("Mlolongo, Kenya",
                             style:
                             TextStyle(
                               fontSize: 10,
                               color: Colors.white,

                             )
                             ,),

                         ]

                     ),
                   ),
                   Container(
                     child: Column(
                       children: <Widget>[
                         Text("WELOME TO ACE CODE",
                           style:
                           TextStyle(
                             fontSize: 16,
                             fontWeight: FontWeight.bold,
                             color: Colors.white,

                           ),),
                         Text("Deploying "
                             "Robust, Readable Code",
                           style:TextStyle(
                             fontSize: 13,
                             color: Colors.white,

                           ),),


                       ],
                     ),
                   ),
                   Container(

                     child: Column(
                       children: <Widget>[
                         Container(

                           child: Row(
                             children: <Widget>[
                               Container(
                                 width: 40,
                                 height: 30,
                                 child:  Transform.scale(
                                     scale: 1,
                                     child:
                                     Image.asset('assets/githublogo.png')),
                               ),

                               Container(
                                 width: 40,
                                   height: 23,
                                   child: Transform.scale(
                                     scale: 1,
                                     child:
                                     Image.asset('assets/linkedinlogo.png')),
                               ),
                             ],
                           ),
                         ),
                         FlutterTimeDemo(),
                       ],),
                   )


                 ],
               ),
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
                                         color: Colors.deepOrange,
                                         fontWeight: FontWeight.normal),),
                                   SizedBox(height: 10,),

                                   Center(
                                     child: Text(
                                       'Entrusted in Building \n\n'
                                           'and Deploying, \n\nsecure Robust readable code'
                                           '\n\nUsing futuristic, Frameworks \n\nand Development Tools'
                                       ,
                                       style: TextStyle(
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
                                 Container(
                                   height: 16,
                                   child: Transform.scale(
                                       scale: 1,
                                       child:
                                       Image.asset('assets/whatapp.png')),
                                 ),
                                SizedBox(width: 90,),
                                 Text("<<<< EMAIL OR WHATSAPP US >>>",
                                   style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.green,
                                       fontWeight: FontWeight.normal),
                                 ),
                                 SizedBox(width: 90,),

                                 Container(
                                   height: 20,
                                   child: Transform.scale(
                                       scale: 1,
                                       child:
                                       Image.asset('assets/gg.png')
                                   ),
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
                                         'Flutter n Dart \n\n Android Studio'
                                             '\n\nGit, Github \n\n'
                                             ''
                                             ' Python and Django \n\n'
                                             ''
                                             ' Kotlin, JetPack Compose CrossPlatform'
                                             '\n\n'
                                             ''
                                             'Figma \n\n'
                                             ''
                                             ' Firebase/GCP/AWS\n\n'
                                             'Docker n Kubernattes',
                                         style: TextStyle(
                                             fontSize: 12,
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

        child: Text(_timeString,style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 14,
          color: Colors.white,
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
