import 'dart:ui';

import 'package:acoder/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
class Creation extends StatelessWidget{
  var isGradient1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return


Container(
  child:  Row(
    children: <Widget>[
      Column(
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
      Column(
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
      Column(
        children: <Widget>[
        Row(
          children: <Widget>[
            Transform.scale(
                scale: 1,
                child:
                Image.asset('assets/githublogo.png')),
            Transform.scale(
                scale: 1,
                child:
                Image.asset('assets/linkedinlogo.png')),
          ],
        ),
          FlutterTimeDemo(),
      ],)


    ],
  ),

);





  }
  
}

