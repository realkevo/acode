import 'package:acoder/model/database_service.dart';
import 'package:flutter/material.dart';
class AboutWidget extends StatefulWidget {
  const AboutWidget({super.key});

  @override
  State<AboutWidget> createState() => _Contactwidget();
}

class _Contactwidget extends State<AboutWidget> {
  final TextEditingController _aboutustittle = TextEditingController();
  final TextEditingController _aboutusdescription = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return
      Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(
            color: Colors.blue, // Outline color
            width: 2.0,         // Outline thickness
          ),
          borderRadius: BorderRadius.circular(8.0), // Rounded corners
        ),
        child:
        Column(
          children: <Widget>[
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child:
                      TextFormField(
                        controller: _aboutustittle,
                        keyboardType:  TextInputType.multiline,
                        maxLines: 1,
                        decoration: InputDecoration(
                          labelText: "about us heading",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Title cannot be empty";
                          }
                          return null;
                        },
                      ),



                    ),
                    SizedBox(height: 10,),
                    TextFormField(
                      controller: _aboutusdescription,
                      keyboardType:  TextInputType.multiline,
                      maxLines: 50,
                      minLines: 1,

                      decoration: InputDecoration(
                        labelText: "about us description",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Title cannot be empty";
                        }
                        return null;
                      },
                    ),

                  ],
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child:
              ElevatedButton(onPressed:
                  (){
                String aboutus_title = _aboutustittle.text.toString();

                String aboutus_description = _aboutusdescription.text.toString();
                DatabaseService databaseService =  DatabaseService();
                databaseService.addContact(aboutus_title, aboutus_description);
              },
                  child: Text("upload")
              ),
            ),
          ],
        ),
      );
  }
}



