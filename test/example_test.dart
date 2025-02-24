import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_practice/repository/example.dart';
import 'package:flutter_test/flutter_test.dart';

/// [ProviderContainer]を作成し、テスト終了時に自動破棄するテストユーティリティ。
ProviderContainer createContainer({
  ProviderContainer? parent,
  List<Override> overrides = const [],
  List<ProviderObserver>? observers,
}) {
  // ProviderContainerを作成し、オプションでパラメータを指定する。
  final container = ProviderContainer(
    parent: parent,
    overrides: overrides,
    observers: observers,
  );

  // テスト終了時、containerを破棄する。
  addTearDown(container.dispose);

  return container;
}

void main() {
  test(
    'Hello description',
    () async {
      final container = createContainer();

      /// これについて理解していないから問題なのかもね。
      expect(
        await container
            .read(exampleProvider.future), // actual 実際の値。今回は"Hello world"
        'Hello world', // matcher 期待する値　今回は"Hello world"
      );

      ///今回のエラー
      ///  Expected: 'Hello world'
      /// Actual: AsyncLoading<String>:<AsyncLoading<String>()>
      ///  Which: not an <Instance of 'String'>
      /// これ、ローディング最中にテストされているからダメなんだよね、おそらく。正解してる。
      /// あとは型が違う。
      /// これの解決方法が知りたい。
      ///
      /// Provider.futureを付けてなかった。これで非同期処理が終わるまで待ってくれる。
    },
  );
}
