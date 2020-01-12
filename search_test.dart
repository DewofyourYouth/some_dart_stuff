import 'search.dart';
import 'package:test/test.dart';

void main() {
  List<int> list = [0, 2, 5, 7, 8, 10, 12, 15, 22, 30];
  test(
      "binarySearch([0, 2, 5, 7, 8, 10, 12, 15, 22, 30], 5) => 'found 10 at Index 5'",
      () {
    expect(binarySearch(list, 10), equals('found 10 at Index 5'));
  });

  test("binarySearch([0, 2, 5, 7, 8, 10, 12, 15, 22, 30], 14) => 'not found'",
      () {
    expect(binarySearch(list, 14), equals('not found'));
  });

  test(
      "binarySearch([0, 2, 5, 7, 8, 10, 12, 15, 22, 30], 8) => 'found 8 at Index 4'",
      () {
    expect(binarySearch(list, 8), equals('found 8 at Index 4'));
  });

  test(
      "binarySearch([0, 2, 5, 7, 8, 10, 12, 15, 22, 30], 30) => 'found 30 at Index 9'",
      () {
    expect(binarySearch(list, 30), equals('found 30 at Index 9'));
  });
}
