import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

/// `GET /api/activity` エンドポイントのレスポンス
///
/// `freezed`と `json_serializable`を使って定義されています。
@freezed
class Activity with _$Activity {
  factory Activity({
    required String key,
    required String activity,
    required String type,
    required int participants,
    required double price,
  }) = _Activity;

  /// JSONオブジェクトを[Activity]インスタンスに変換することで、
  /// APIレスポンスの型安全な読み取りが可能になります。
  factory Activity.fromJson(Map<String, dynamic> json) =>
      _$ActivityFromJson(json);
}
