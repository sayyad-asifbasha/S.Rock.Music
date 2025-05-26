import 'package:cloud_firestore/cloud_firestore.dart';
class DBService {
  static CollectionReference serviceCards = FirebaseFirestore.instance.collection('service_cards');
}