import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Storefunction {
  final _firestore = FirebaseFirestore.instance;
  final _auth = FirebaseAuth.instance;

  Future<void> storedata(
    String mechanic,
    String servicetype,
    String date,
    String timeslot,
    String vehicle,
    String cost,
  ) async {
    await _firestore.collection("servicedata").add({
      'email': _auth.currentUser?.email,
      'mechanic': mechanic,
      'servicetype': servicetype,
      'date': date,
      'timeslot': timeslot,
      'vehicle': vehicle,
      'cost': cost,
      'createdAt': FieldValue.serverTimestamp(),
    });
  }
}
