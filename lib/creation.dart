import 'dart:ui';

import 'package:acoder/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Creation extends StatelessWidget{
  var isGradient1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
return


  Container(
      height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/acode.jpg",

                  //'https://d2gg9evh47fn9z.
                  // cloudfront.net/800px_COLOURBOX18042265.jpg',
                ),

                fit: BoxFit.fill)
        ),
        padding: EdgeInsets.fromLTRB(5, 10, 5, 10),
        child:
        TechBorder(
            borderWidth:3.0,
            leftBorderLength:25,
            rightBorderLength:25,
            borderColor: Colors.blueAccent,
            child:
                Nyumbani(),
      ),

  );
          /*Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text('SCREEN:  Ox1b o1197hgk500',
                        style: TextStyle(
                            color: Colors.blueAccent, fontSize: 17))),
                Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Row(
                      children: <Widget>[
                        Text('3518',
                            style: TextStyle(
                                color: Colors.blueAccent, fontSize: 17)),
                        Container(
                            margin: EdgeInsets.only(left: 15),
                            color: Colors.blueAccent,
                            height: 12,
                            width: 80),
                        SizedBox(width: 8),
                        Container(
                            color: Colors.blueAccent,
                            height: 12,
                            width: 100)
                      ],
                    )),
                Padding(
                    padding: EdgeInsets.only(top: 5, bottom: 5),
                    child: Text('Other fields gos here...',
                        style: TextStyle(
                            color: Colors.blueAccent, fontSize: 17))),
              ])));*/



  /*Stack(
  children: [
    Container(
      height: 300,
      width: 300,
    color: Colors.black.withOpacity(0.5),

),
    Center(
    child: ClipRRect(
    borderRadius: BorderRadius.circular(20),
    child: BackdropFilter(
    filter:  ImageFilter.blur(sigmaX: 10,
    sigmaY: 10),
    child: Container(
    width: 200,
    height: 200,
    color:
    Colors.white.withOpacity(0.2),
    child: Center(
    child: Text("glass effect"),
    ),
    ),
    ),
    ),
    )

  ],
);*/


  }
  
}
class TechBorder extends StatelessWidget {
  final Widget child;
  final Color borderColor;
  final double borderWidth, leftBorderLength, rightBorderLength;

  //This is just a sample, modify it as your requirement
  //add extra properties like padding,color etc.

  TechBorder(
      {Key? k,
        required this.child,
        required this.borderColor,
        required this.borderWidth,
        required this.leftBorderLength,
        required this.rightBorderLength,})
      : super(key: k);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border(
                  left: BorderSide(color: borderColor, width: borderWidth),
                  right:
                  BorderSide(color: borderColor, width: borderWidth)),
              color: Colors.transparent),
        ),
        Container(
            color: Colors.transparent,
            child: Stack(children: [
              Positioned(
                  top: 0,
                  left: 0,
                  child: Container(
                      color: borderColor,
                      width: leftBorderLength,
                      height: borderWidth)),
              Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                      color: borderColor,
                      width: leftBorderLength,
                      height: borderWidth)),
              Positioned(
                  right: 0,
                  child: Container(
                      color: borderColor,
                      width: rightBorderLength,
                      height: borderWidth)),
              Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                      color: borderColor,
                      width: rightBorderLength,
                      height: borderWidth)),
            ])),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: child,
        )
      ],
    );
  }
}
class Heda extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      //Main header container

      Container(
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
  }


}
