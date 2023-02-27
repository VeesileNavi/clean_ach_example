import 'package:magnit_test_app/data/local_storage/local_storage_util.dart';
import 'package:magnit_test_app/domain/model/characteristics.dart';
import 'package:magnit_test_app/domain/repository/characteristics_repository.dart';

class CharacteristicsLocalRepository extends CharacteristicsRepository{
  final LocalStorageUtil _localStorageUtil;
  CharacteristicsLocalRepository(this._localStorageUtil);
  @override
  Future<List<Characteristics>> getAllCharacteristics() {
    return _localStorageUtil.getAllCharacteristics();
  }

}