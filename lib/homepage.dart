import 'package:acoder/desktopBody.dart';
import 'package:acoder/mobileBody.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key?key}) : super(key: key
  );

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
return
  Scaffold(
    // backgroundColor: currentWidth < 600 ? Colors.lightGreenAccent : Colors.deepOrange,
    body: ResponsiveLayout(mobileBody: MyMobileBody(),
      desktopBody: MyDesktopbody(),
    ),

    /*Center(
    child: Text("This is Responsive"
    ),
  ),*/
  );
  }
}
class ResponsiveLayout extends StatelessWidget{
  final Widget mobileBody;
  final Widget desktopBody;

  const ResponsiveLayout({super.key, required this.mobileBody, required this.desktopBody});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return LayoutBuilder(builder:
        (context, constraints){
      if (constraints.maxWidth <600 ){
        return mobileBody;

      }
      else {
        return desktopBody;

      }
    });
  }

}

