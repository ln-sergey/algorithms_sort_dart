import 'utils.dart';

void bubbleSort(List<int> array) => throw UnimplementedError();

void bubbleSortImpl(List<int> array) {
  for (var i = 0; i + 1 < array.length; ++i) {
    for (var j = 0; j + 1 < array.length - i; j++) {
      if (array[j + 1] < array[j]) swap(array[j], array[j + 1]);
    }
  }
}
