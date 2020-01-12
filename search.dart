/**
 * Finds index of `needle` in sorted `list` with linear search
 *
 * if `needle` is not in `list` returns 'not found'
 *
 * time complexity is 0(n)
 * [n = list.length]
 */
String linearSearch(List<int> list, int needle) {
  print("needle: $needle");
  var ans = "";
  // list.sort();
  for (int i = 0; i < list.length; i++) {
    if (list[i] == needle) {
      // return index of item searched
      return "found $needle at Index $i";
    }
  }
  // if not found return not found
  if (ans == "") {
    return "not found";
  }
  return ans;
}

/**
 * finds index of `needle` in sorted `list` with linear search.
 *
 * if `needle` is not in `list` returns 'not found'
 *
 * time complexity is O(logN)
 * [n = list.length]
 */
String binarySearch(List<int> list, int needle) {
  int min = 0;
  int max = list.length - 1;
  while (min <= max) {
    int mid = ((min + max) / 2).floor();
    if (needle == list[mid]) {
      return "found $needle at Index $mid";
    } else if (needle < list[mid]) {
      max = mid - 1;
    } else {
      min = mid + 1;
    }
  }
  return "not found";
}
