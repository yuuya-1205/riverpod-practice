import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'synchro_provider.g.dart';

/// 同期的にFutureを返さない。
@riverpod
int synchro(Ref ref) {
  return 0;
}

@riverpod
ValueNotifier<int> myListerner(Ref ref) {
  final notifier = ValueNotifier(0);
  ref.onDispose(notifier.dispose);
  notifier.addListener(ref.notifyListeners);
  return notifier;
}
