/**
 * This method takes the list `integers` as an argument.
 * `integers` is either entirely comprised of odd integers or entirely comprised of even integers except for a single integer N as an argument.
 * It returns this the single odd or even integer.
 *
 * `integers` is a list (which will have a length of at least 3, but could be very large) containing integers.
 */
int find(List<int> integers) {
  return integers.firstWhere(
      integers.getRange(0, 3).where((i) => i % 2 == 0).length > 1
          ? (i) => i % 2 == 1
          : (i) => i % 2 == 0);
}

// previous solution:

// int find(List integers) {
//   var evens = 0;
//   for (int ctr = 0; ctr <= 2; ctr++) {
//     if (integers[ctr] % 2 == 0) {
//       evens++;
//     }
//   }
//   bool getEven = (evens >= 2) ? true : false;
//   List ans = getEven
//       ? integers.where((l) => l % 2 != 0).toList()
//       : integers.where((l) => l % 2 == 0).toList();
//   return ans[0];
// }

/**
 * this function accepts a `signature` list of at least 3 integers and returns a tribonacci sequence for `n` times
 */
List<num> tribonacciTime(List<num> signature, int n) {
  for (var i = 0; i < n - 3; i++) {
    signature.add(signature
        .getRange(signature.length - 3, signature.length)
        .reduce((value, element) => value + element));
  }
  return signature;
}
