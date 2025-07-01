import 'package:domain/domain/test/entity/test.entity.dart';

abstract class TestRepository {
  Future<List<TestEntity>> getTests();
}
