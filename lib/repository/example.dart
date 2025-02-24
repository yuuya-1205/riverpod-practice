import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'example.g.dart';

@riverpod
Future<String> example(Ref ref) async => 'Hello world';
