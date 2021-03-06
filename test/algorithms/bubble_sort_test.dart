import 'package:test/test.dart';
import '../../bin/algorithms/bubble_sort.dart';

void main() {
  test('bubble_sort', () {
    // arrange
    final tArray1 = <int>[9, 8, 7, 6, 5, 4, 3, 2, 1, 0];
    final tArray2 = <int>[21, 75, 12, 4, 7, 79, 30, 11, 12, 75];
    final tArray3 = <int>[5];
    final tArray4 = <int>[];

    // act
    bubbleSortImpl(tArray1);
    bubbleSortImpl(tArray2);
    bubbleSortImpl(tArray3);
    bubbleSortImpl(tArray4);

    // assert
    expect(tArray1, equals([...tArray1]..sort()));
    expect(tArray2, equals([...tArray2]..sort()));
    expect(tArray3, equals([...tArray3]..sort()));
    expect(tArray4, equals([...tArray4]..sort()));
  });
}