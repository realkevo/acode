import 'package:acoder/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Header extends StatelessWidget{
  final String url = "https://github.com/realkevo";
  final linkedUrl = "https://www.linkedin.com/in/kelvin-thuranira-485844231/";

  final String email = "acodedevelopers100@gmail.com";
  final String subject = "Hello";

  void _sendMail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=$subject',

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
    final windowSize = MediaQuery.sizeOf(context).width;
    // TODO: implement build
return Container(

  width: windowSize,
  decoration: BoxDecoration(
    color: Colors.transparent,
    borderRadius: BorderRadius.circular(5),

  ),

    child:  Row(
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
                  GestureDetector(
                    onTap: _sendMail,
                    child: Text("Acodedevelopers100@gmail.com",
                      style:      TextStyle(
                        fontSize: 11,
                        decoration: TextDecoration.none,

                        fontStyle: FontStyle.normal,
                        color: Colors.lightGreenAccent,

                      ),),
                  ),

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
                        width: 16,
                        child:  GestureDetector(
                          child: Transform.scale(
                              scale: 2,
                              child:
                              Image.asset('assets/githublogo.png')),

                        onTap: () async {
                            if (await  canLaunchUrl(Uri.parse(url))){
                              await launchUrl(Uri.parse(url),
                              mode:
                              LaunchMode.externalApplication,
                              //browse in browser)

                              );
                            }
                            else throw 'oops! try again later';
                          }
                        ,),
                      ),

                      SizedBox(width: 20,),


                      GestureDetector(
                        child: Container(

                          width: 10,
                          child: Transform.scale(
                              scale: 2,
                              child:
                              Image.asset('assets/linkedinlogo.png')),
                        ),
                          onTap: () async {
                            if (await  canLaunchUrl(Uri.parse(linkedUrl))){
                              await launchUrl(Uri.parse(linkedUrl),
                                mode:
                                LaunchMode.externalApplication,
                                //browse in browser)

                              );
                            }
                            else throw 'oops! try again later';
                          }
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


);  }

}
