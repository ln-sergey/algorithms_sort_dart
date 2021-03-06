void swap(List<int> array, int index1, int index2) {
  final tmp = array[index1];
  array[index1] = array[index2];
  array[index2] = tmp;
}