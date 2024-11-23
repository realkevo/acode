import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Update extends StatelessWidget {
  const Update({Key? key}) : super( key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 58.0, left: 10, right: 10),
          child: Container(
            child: Column(
              children: [
                Text(
                    "DEVELOPER CURRENTLY NAPPING"),
                Text("Anyway our android version \n"
                    "is currently under maintainance\n"
                    " \n"
                    "Desktop version is up\n"
                    "Visit from desktop or Try Set \n"
                    "Phone orientation=LANDSCAPE"
                    "\n")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
