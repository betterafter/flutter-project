import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final di = GetIt.instance;

@InjectableInit(
  initializerName: 'domain',
  preferRelativeImports: true,
  asExtension: true,
)
void configureDependencies() => GetIt.instance.call();
