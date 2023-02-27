import 'package:magnit_test_app/domain/model/characteristics.dart';

import '../local_storage/model/model.dart';

class CharacteristicsMapper {
  static Characteristics fromLocal(LocalCharacteristics localCharacteristics) {
    return Characteristics(
      id: localCharacteristics.id,
      weight: localCharacteristics.weight,
    );
  }
}
