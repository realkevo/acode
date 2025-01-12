import 'package:acoder/admin/widgets/aboutuswidget.dart';
import 'package:acoder/admin/widgets/contactwidget.dart';
import 'package:acoder/admin/widgets/servicewidget.dart';
import 'package:flutter/material.dart';
class UploadService extends StatefulWidget {
  const UploadService({super.key});

  @override
  State<UploadService> createState() => _UploadServiceState();
}

class _UploadServiceState extends State<UploadService> {


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  Center(
        child: SingleChildScrollView(
          child: Column(
          
          children: <Widget>[
            Servicewidget(),
            SizedBox(
              height: 10,),
            Contactwidget(),

            SizedBox(
              height: 10,
            ),

            AboutWidget(),
            SizedBox(
              height: 10,
            ),
          
          ],
          
              ),
        )
      )
    );

  }





}