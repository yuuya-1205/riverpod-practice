import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part "firebase_auth_instance.g.dart";

@riverpod
FirebaseAuth firebaseAuthInstance(ref) {
  return FirebaseAuth.instance;
}
