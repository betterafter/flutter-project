import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'splash_setting.riverpod.g.dart';

@riverpod
class SplashSetting extends _$SplashSetting {
  @override
  bool build() {
    return false;
  }

  Future<void> appSetting() async {
    await Future.delayed(const Duration(seconds: 3));
    state = true;
  }
}
