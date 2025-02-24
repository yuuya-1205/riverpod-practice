// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$todoNotifierHash() => r'f3d4ada1cd57285f8c29c06f74635f91c7020b14';

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

abstract class _$TodoNotifier extends BuildlessAutoDisposeAsyncNotifier<Todo> {
  late final String documentId;

  FutureOr<Todo> build(
    String documentId,
  );
}

/// See also [TodoNotifier].
@ProviderFor(TodoNotifier)
const todoNotifierProvider = TodoNotifierFamily();

/// See also [TodoNotifier].
class TodoNotifierFamily extends Family<AsyncValue<Todo>> {
  /// See also [TodoNotifier].
  const TodoNotifierFamily();

  /// See also [TodoNotifier].
  TodoNotifierProvider call(
    String documentId,
  ) {
    return TodoNotifierProvider(
      documentId,
    );
  }

  @override
  TodoNotifierProvider getProviderOverride(
    covariant TodoNotifierProvider provider,
  ) {
    return call(
      provider.documentId,
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
  String? get name => r'todoNotifierProvider';
}

/// See also [TodoNotifier].
class TodoNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<TodoNotifier, Todo> {
  /// See also [TodoNotifier].
  TodoNotifierProvider(
    String documentId,
  ) : this._internal(
          () => TodoNotifier()..documentId = documentId,
          from: todoNotifierProvider,
          name: r'todoNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$todoNotifierHash,
          dependencies: TodoNotifierFamily._dependencies,
          allTransitiveDependencies:
              TodoNotifierFamily._allTransitiveDependencies,
          documentId: documentId,
        );

  TodoNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.documentId,
  }) : super.internal();

  final String documentId;

  @override
  FutureOr<Todo> runNotifierBuild(
    covariant TodoNotifier notifier,
  ) {
    return notifier.build(
      documentId,
    );
  }

  @override
  Override overrideWith(TodoNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: TodoNotifierProvider._internal(
        () => create()..documentId = documentId,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        documentId: documentId,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<TodoNotifier, Todo> createElement() {
    return _TodoNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is TodoNotifierProvider && other.documentId == documentId;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, documentId.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin TodoNotifierRef on AutoDisposeAsyncNotifierProviderRef<Todo> {
  /// The parameter `documentId` of this provider.
  String get documentId;
}

class _TodoNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<TodoNotifier, Todo>
    with TodoNotifierRef {
  _TodoNotifierProviderElement(super.provider);

  @override
  String get documentId => (origin as TodoNotifierProvider).documentId;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
