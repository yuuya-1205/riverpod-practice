// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todos.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todosNotifierHash() => r'7315f0a3398f0ca88a96a3342c72ee2e458f9e15';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$TodosNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Todo>> {
  late final String id;

  FutureOr<List<Todo>> build(
    String id,
  );
}

/// クラスのnotifierと言う。
/// 違い副作用メソッド　publicメソッド
///
///
/// Copied from [TodosNotifier].
@ProviderFor(TodosNotifier)
const todosNotifierProvider = TodosNotifierFamily();

/// クラスのnotifierと言う。
/// 違い副作用メソッド　publicメソッド
///
///
/// Copied from [TodosNotifier].
class TodosNotifierFamily extends Family<AsyncValue<List<Todo>>> {
  /// クラスのnotifierと言う。
  /// 違い副作用メソッド　publicメソッド
  ///
  ///
  /// Copied from [TodosNotifier].
  const TodosNotifierFamily();

  /// クラスのnotifierと言う。
  /// 違い副作用メソッド　publicメソッド
  ///
  ///
  /// Copied from [TodosNotifier].
  TodosNotifierProvider call(
    String id,
  ) {
    return TodosNotifierProvider(
      id,
    );
  }

  @override
  TodosNotifierProvider getProviderOverride(
    covariant TodosNotifierProvider provider,
  ) {
    return call(
      provider.id,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'todosNotifierProvider';
}

/// クラスのnotifierと言う。
/// 違い副作用メソッド　publicメソッド
///
///
/// Copied from [TodosNotifier].
class TodosNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodosNotifier, List<Todo>> {
  /// クラスのnotifierと言う。
  /// 違い副作用メソッド　publicメソッド
  ///
  ///
  /// Copied from [TodosNotifier].
  TodosNotifierProvider(
    String id,
  ) : this._internal(
          () => TodosNotifier()..id = id,
          from: todosNotifierProvider,
          name: r'todosNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todosNotifierHash,
          dependencies: TodosNotifierFamily._dependencies,
          allTransitiveDependencies:
              TodosNotifierFamily._allTransitiveDependencies,
          id: id,
        );

  TodosNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.id,
  }) : super.internal();

  final String id;

  @override
  FutureOr<List<Todo>> runNotifierBuild(
    covariant TodosNotifier notifier,
  ) {
    return notifier.build(
      id,
    );
  }

  @override
  Override overrideWith(TodosNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodosNotifierProvider._internal(
        () => create()..id = id,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        id: id,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodosNotifier, List<Todo>>
      createElement() {
    return _TodosNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodosNotifierProvider && other.id == id;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, id.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodosNotifierRef on AutoDisposeAsyncNotifierProviderRef<List<Todo>> {
  /// The parameter `id` of this provider.
  String get id;
}

class _TodosNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodosNotifier, List<Todo>>
    with TodosNotifierRef {
  _TodosNotifierProviderElement(super.provider);

  @override
  String get id => (origin as TodosNotifierProvider).id;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
