import 'package:acoder/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.sizeOf(context);
    // TODO: implement build
return Container(

  width: windowSize.width,
  decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(5),

  ),

    child: SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
      
            child: Column(
                children: < Widget>[
      
                  Text("Nairobi, Kenya",
                    style:
                    TextStyle(
                      fontSize: 12,
                      decoration: TextDecoration.none,
                      color: Colors.white,
      
                    )
                    ,),
      
                  SizedBox(height: 10,),
                  Text("Acodedevelopers100@gmail.com",
                    style:      TextStyle(
                      fontSize: 11,
                      decoration: TextDecoration.none,
      
                      fontStyle: FontStyle.normal,
                      color: Colors.white,
      
                    ),),
      
                ]
      
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 58.0),
            child: Container(
              child: Column(
                children: <Widget>[
                  Text("AC0DE",
                    style:
                    TextStyle(
                      fontSize: 38,
                      decoration: TextDecoration.none,
      
                      fontWeight: FontWeight.bold,
                      color: Colors.lightGreenAccent,
      
                    ),),
                  SizedBox(height: 10,),
      
                  Text("Deploying "
                      "Robust, Readable Code",
                    style:TextStyle(
                      fontSize: 13,
                      decoration: TextDecoration.none,
      
                      color: Colors.white,
      
                    ),),
      
      
                ],
              ),
            ),
          ),
          SizedBox(width: 10,),
          Container(
      
            child: Column(
              children: <Widget>[
                Container(
      
      
      
      
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
      
                    children: <Widget>[
                      Container(
                        width: 12,
                        child:  Transform.scale(
                            scale: 2,
                            child:
                            Image.asset('assets/githublogo.png')),
                      ),
      
                      SizedBox(width: 20,),
      
      
                      Container(
                        width: 10,
                        child: Transform.scale(
                            scale: 2,
                            child:
                            Image.asset('assets/linkedinlogo.png')),
                      ),
      
                    ],
                  ),
      
      
                ),
                SizedBox(height: 20,),
      
                FlutterTimeDemo(),
              ],),
          )
      
      
        ],
      ),
    ),

);  }

}