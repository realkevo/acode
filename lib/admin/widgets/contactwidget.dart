import 'package:acoder/model/database_service.dart';
import 'package:flutter/material.dart';
class Contactwidget extends StatefulWidget {
  const Contactwidget({super.key});

  @override
  State<Contactwidget> createState() => _Contactwidget();
}

class _Contactwidget extends State<Contactwidget> {
  final TextEditingController _contactName = TextEditingController();
  final TextEditingController _contactdValue = TextEditingController();

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
                        controller: _contactName,
                        keyboardType:  TextInputType.multiline,
                        maxLines: 1,
                        decoration: InputDecoration(
                          labelText: "contact name",
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
                      controller: _contactdValue,
                      keyboardType:  TextInputType.multiline,
                      maxLines: 50,
                      minLines: 1,

                      decoration: InputDecoration(
                        labelText: "phone no",
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
                String contact_name = _contactName.text.toString();

              String contact_value = _contactdValue.text.toString();
                    DatabaseService databaseService =  DatabaseService();
                    databaseService.addContact(contact_name, contact_value);
                  },
                  child: Text("upload")
              ),
            ),
          ],
        ),
      );
  }
}



