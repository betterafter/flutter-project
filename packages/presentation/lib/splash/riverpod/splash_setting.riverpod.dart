import 'package:domain/domain.dart';
import 'package:presentation/di.dart';
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

  Future<void> test() async {
    final test = di.get<TestUsecase>();
    print(test.getTests());
  }
}
