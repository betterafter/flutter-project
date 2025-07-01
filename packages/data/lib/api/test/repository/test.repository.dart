import 'package:domain/domain.dart';
import 'package:injectable/injectable.dart';

@injectable
class TestRepositoryImpl implements TestRepository {
  TestRepositoryImpl();

  @override
  Future<List<TestEntity>> getTests() async {
    return [];
  }
}
