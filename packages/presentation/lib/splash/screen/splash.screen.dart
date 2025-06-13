import 'package:design/images/image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:presentation/splash/riverpod/splash_setting.riverpod.dart';
import 'package:presentation/util/router.dart';

class SplashScreen extends ConsumerStatefulWidget {
  const SplashScreen({super.key});

  @override
  ConsumerState<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends ConsumerState<SplashScreen> {
  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      ref.read(splashSettingProvider.notifier).appSetting();
    });
  }

  @override
  Widget build(BuildContext context) {
    final isAppSetting = ref.watch(splashSettingProvider);

    if (isAppSetting) {
      WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
        FlutterRouter.replaceHome(context);
      });
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            KeykatImages.imagesImgLogo(size: 50),
          ],
        ),
      ),
    );
  }
}
