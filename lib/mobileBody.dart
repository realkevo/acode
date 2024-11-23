import 'package:acoder/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({Key ?key}) : super (key: key);
  final whatsAppUrl = "https://wa.me/+254758536280";

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
    final currentWith = MediaQuery.of(context).size.width;
    final currentHeight = MediaQuery.of(context).size.height;

    return

        Scaffold(
          body:   SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child:
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
              ),


              //Root Container

              child:Column(
                //this is root column
                children: <Widget>[

                  Container(
                    height: 50,
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        Container(
                          color: Colors.black,

                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Nairobi, Kenya",
                                  style:
                                  TextStyle(
                                    fontSize: 12,
                                    decoration: TextDecoration.none,
                                    color: Colors.white,

                                  )
                                  ,),
                                GestureDetector(
                                  onTap: _sendMail,
                                  child: Text("Acodedevelopers100@gmail.com",
                                    style:      TextStyle(
                                      fontSize: 10,
                                      decoration: TextDecoration.none,

                                      fontStyle: FontStyle.normal,
                                      color: Colors.lightGreenAccent,

                                    ),),
                                ),
                              ],
                            ),
                          ),
                        ),

                        Container(
                          color: Colors.black,

                          child: Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: Column(
                              children: [
                                Text("AC0DE",
                                  style:
                                  TextStyle(
                                    fontSize: 18,
                                    decoration: TextDecoration.none,

                                    fontWeight: FontWeight.bold,
                                    color: Colors.lightGreenAccent,

                                  ),),


                                Text("Deploying "
                                    "Robust, Readable Code",
                                  style:TextStyle(
                                    fontSize: 11,
                                    decoration: TextDecoration.none,

                                    color: Colors.white,

                                  ),),
                              ],
                            ),
                          ),

                        ),
                        Container(
                          color: Colors.black,

                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(


                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 13),
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.horizontal,
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [

                                          //icons row here

                                          Container(
                                            width: 17,
                                            child: GestureDetector(
                                              child: Transform.scale(
                                                  scale: 2.2,
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
                                          SizedBox(width: 15,),
                                          Container(
                                            width: 20,
                                            height: 11,


                                            child: GestureDetector(
                                                child: Container(

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
                                          ),

                                        ],),
                                    ),
                                  ),
                                  color: Colors.white,
                                  height: 23.2,
                                  width:  115,
                                ),

                                FlutterTimeDemo(),
                              ],
                            ),
                          ),


                        ),

                      ],
                    ),
                  ),


                  //header container
                  Padding(
                    padding: const EdgeInsets.all(3.0),
                    //header container

                    //header container
                  ),



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
                                                height: 45,
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
                                              height: 45,
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

















  }
}
