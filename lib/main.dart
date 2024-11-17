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
               decoration: BoxDecoration(
                 color: Colors.transparent,
                 borderRadius: BorderRadius.circular(5),

               ),
               child: Column(
                mainAxisSize: MainAxisSize.min,

                children: <Widget>[

                  //Title container
                  Padding(
                    padding: const EdgeInsets.only(left:
                    8.0, right: 8.0),
                    child: Container(
                      color: Colors.transparent,
                      child: Center(
                          child: Text("WELOME TO ACE CODE",
                            style:
                            TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,

                            ),)
                      ),
                    ),
                  ),

                  //second container
                 Padding(
                   padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                   child: Container(
                        color: Colors.transparent,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Container(
                              child:
                              Center(child:
                              Text("Acodedevelopers100@gmail.com",
                              style:      TextStyle(
                                fontSize: 14,
                                fontStyle: FontStyle.italic,
                                color: Colors.white,

                              ),)
                        ,),
                              ),

                            Padding(
                              padding: const EdgeInsets.only( left: 8),
                              child: Container(
                                color:  Colors.transparent,
                                child:
                                Center(child:
                                Text("Deploying "
                                    "Robust, Readable Code",
                                  style:TextStyle(
                                  fontSize: 13,
                                  color: Colors.white,

                                                        ),)
                                                        ,
                                )),
                            ),

                            Container(
                              //Address
                              child: Center(child: Text("Mlolongo, Kenya",
                                style:
                          TextStyle(
                          fontSize: 10,
                          color: Colors.white,

                          )
                          ,)),
                            ),

                          ],
                        ),

                      ),
                 ),


                  //links and clock Container

                  Padding(
                    //links and clock Container

                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                    child: Container(
                      //links and clock Container
                      height: 30,


                      color: Colors.transparent,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: <Widget>[
                          //clockTV container

                          Container(
                            //clockTV container
                            color: Colors.transparent,
                            child:
                           Padding(
                             padding: const EdgeInsets.only(top: 5.0),
                             child: FlutterTimeDemo(),
                           ),

                          ),

                          Container(
                              color: Colors.transparent,

                              child:
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    
                                    children: [
                                      Transform.scale(
                                          scale: 3,
                                          child:
                                      Image.asset('assets/folox.png')),
                                      Transform.scale(
                                          scale: 1,
                                          child:
                                          Image.asset('assets/githublogo.png')),
                                      Transform.scale(
                                          scale: 1,
                                          child:
                                          Image.asset('assets/linkedinlogo.png')),

                                
                                
                                      /*   Text("Contact and Links",
                                                                  style:
                                                                  TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                
                                                                  ),),*/
                                    ],
                                  ),
                                ),
                              )

                          ),



                        ],
                      ),
                    ),
                  ),

                ],

               ),
             ),
           //header container









SizedBox(height: 5,),
           Expanded(
             child: Container(
               color: Colors.transparent,

             child: SingleChildScrollView(
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: <Widget>[

                   Container(
                     color: Colors.transparent,
                     child:   Center(
                       child: Column(
                         mainAxisSize: MainAxisSize.max,
                         children: <Widget>[
                           Text(
                             'About Us',
                             style: TextStyle(
                                 fontSize: 18,
                                 color: Colors.white,
                                 fontWeight: FontWeight.bold),),
                           SizedBox(height: 20,),
                           Center(child: Column(
                             children: <Widget>[
                               Center(
                                 child: Text(
                                   'Entrusted in Building \n'
                                       'and Deploying, \nsecure Robust readable code'
                                       '\nUsing futuristic, Frameworks \nand Development Tools'
                                       '\n\nWhatsApp or Email Us ',
                                   style: TextStyle(
                                       fontSize: 12,
                                       color: Colors.white,
                                       fontWeight: FontWeight.normal),
                                 ),
                               ),
                               Center(
                                 child: Row(
                                   mainAxisSize: MainAxisSize.min,
                                   children: <Widget>[
                                     Transform.scale(
                                         scale: 0.2,
                                         child:
                                         Image.asset('assets/whatapp.png')),

                                     Transform.scale(
                                         scale: 0.2,
                                         child:
                                         Image.asset('assets/whatapp.png')),
                                   ],
                                 ),
                               ),

                             ],
                           ),
                           ),
                         ],),
                     ),
                   ),
                   SizedBox(height: 10,),
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
         ],
       ),
     ),

   );


  }

}
/*
class Contacts extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return    Padding(
  padding: const EdgeInsets.only(top: 4.0),
  child: Container(

    decoration: BoxDecoration(
      color: Colors.transparent,

      borderRadius: BorderRadius.circular(5),
    ),

    child: Column(
      mainAxisSize: MainAxisSize.max,
        children: <Widget>[
        Align(
        alignment: Alignment.center,
        child: Padding(
        padding: const EdgeInsets.only(bottom: .3, top: 3),
        child: Expanded(
          child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          Text(
          '+254758536280',
          style: TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontStyle: FontStyle.normal,
          ),
          ),
          Text(
          'acodevelopers100@gmail.com',
          style: TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontStyle: FontStyle.normal,
          ),
          ),
          Text(
          'Nairobi,Kenya',
          style: TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontStyle: FontStyle.normal,
          ),
          ),
          ],
          ),
        ),
        ),
        ),
        ],
        ),
  ),
); }
  
}

class AboutUs extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return     Container(
  //About us container
    height: 200,
    width: 300,
    decoration: BoxDecoration(
        color: Colors.transparent,
      border:  Border(
        top: BorderSide(


          color: Colors.blueAccent,
          width: 2,),

        bottom: BorderSide(


          color: Colors.blueAccent,
          width: 2,),
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Column(
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text(
          'About',
          style: TextStyle(
              fontSize: 17,
              color: Colors.white,
              fontWeight: FontWeight.bold),),
        SizedBox(height: 20,),
        Center(child: Column(
          children: <Widget>[
            Center(
              child: Text(
                'Entrusted in Building \n'
                    'and Deploying, \nsecure Robust readable code'
                    '\nUsing futuristic, Frameworks \nand Development Tools'
                    '\n\nWhatsApp or Email Us ',
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.normal),
              ),
            ),
          ],
        ),
        ),
      ],
    ),
);
  }

}
class OurServices extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return       Container(
  //About us container
    width: 300,
    decoration: BoxDecoration(
        color: Colors.transparent,
      border:  Border(
        left: BorderSide(


          color: Colors.blueAccent,
          width: 2,),

        right: BorderSide(


          color: Colors.blueAccent,
          width: 2,),
      ),
      borderRadius: BorderRadius.circular(6),
    ),
    child: Column(
      children: <Widget>[
        Text(
          'Services',
          style: TextStyle(
              fontSize: 19,
              color: Colors.white,
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
);
  }

}
class Description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return       Container(
      //About us container
      width: 500,
      decoration: BoxDecoration(
          color: Colors.transparent,
        border:  Border(
          right: BorderSide(
            color: Colors.blueAccent,
            width: 10,
          ),
          left: BorderSide(


            color: Colors.blueAccent,
            width: 3,),
        ),        borderRadius: BorderRadius.circular(6),

      ),
      child: Column(
        children: <Widget>[
          Text(
            'Tools and Frameworks',
            style: TextStyle(
                fontSize: 19,
                color: Colors.white,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 20,
          ),
          Center(
            child: Column(
              children: <Widget>[
                Center(
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
              ],
            ),
          ),
        ],
      ),
    );
  }

}

class Links extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return Container(
  decoration: BoxDecoration(
    color: Colors.transparent,
    border:  Border(
      bottom: BorderSide(


        color: Colors.blueAccent,
        width: 3,),
    ),    borderRadius: BorderRadius.circular(5),
  ),
  /*child:
  Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
     /* Text(
        'Github',
        style: TextStyle(
          fontSize: 12,
          color: Colors.green,
          fontStyle: FontStyle.italic,
        ),
      ),*/
     Image.asset('lib/assets/icons/githublogo.png',
    height: 30,
     cacheWidth: 50, cacheHeight: 30,),
    /*Image.asset('lib/assets/folox.png', width: 50,
      height: 30,
       cacheWidth: 50, cacheHeight: 30,),*/




    ],
  ),*/

);  }

}

 */
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
