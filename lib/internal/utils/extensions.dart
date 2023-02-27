import 'dart:math' as math;
extension RandomExtension<T> on List<T>{
  Iterable<T> get randomRange{
    final int lowerBound = math.Random().nextInt((length/2).floor());
    final int upperBound = math.Random().nextInt(length-lowerBound)+lowerBound;
    return getRange(lowerBound, upperBound);
  }
}