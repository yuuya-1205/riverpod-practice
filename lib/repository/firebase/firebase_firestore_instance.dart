import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'firebase_firestore_instance.g.dart';

@riverpod
FirebaseFirestore firebaseFirestoreInstance(ref) {
  return FirebaseFirestore.instance;
}
