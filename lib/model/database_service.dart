
import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final FirebaseFirestore _firestore =
   FirebaseFirestore.instance;
  Future<void> addService(service_tittle,
      service_description,
      ) async {
    try {
      await _firestore.collection('data').add({
        'serviceTitle': service_tittle,
        'serviceDescription': service_description,
      });

    }
        catch (e) {
      print(e.toString());

        }

  }

  //add contact method
  Future<void> addContact(contact_name,
      contact_value,
      ) async {
    try {
      await _firestore.collection('data').add({
        'contactName': contact_name,
        'contactValue': contact_value,
      });

    }
    catch (e) {
      print(e.toString());

    }

  }
  Future<void> addAboutUs(aboutus_title,
      aboutus_description,
      ) async {
    try {
      await _firestore.collection('data').add({
        'aboutustitle': aboutus_title,
        'aboutusDescription': aboutus_description,
      });

    }
    catch (e) {
      print(e.toString());

    }

  }


}