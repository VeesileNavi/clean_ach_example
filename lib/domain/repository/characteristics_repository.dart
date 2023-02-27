import '../model/model.dart';

abstract class CharacteristicsRepository{
  Future<List<Characteristics>> getAllCharacteristics();
}