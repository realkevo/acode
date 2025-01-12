import 'package:flutter/material.dart';
class Servicewidget extends StatefulWidget {
  const Servicewidget({super.key});

  @override
  State<Servicewidget> createState() => _ServicewidgetState();
}

class _ServicewidgetState extends State<Servicewidget> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();

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
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child:
                  TextFormField(
                    controller: _titleController,
                    keyboardType:  TextInputType.multiline,
                    maxLines: 1,
                    decoration: InputDecoration(
                      labelText: "service Title",
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
                  controller: _descriptionController,
                  keyboardType:  TextInputType.multiline,
                  maxLines: 50,
                  minLines: 1,

                  decoration: InputDecoration(
                    labelText: "service Description",
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
      );
  }
}

//Contact


