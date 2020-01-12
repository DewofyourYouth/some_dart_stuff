import 'search.dart' show binarySearch, linearSearch;
import 'outlier.dart';
import 'classy_dart.dart' show Person, Student;

void main(List<String> args) {
  String runNow = (args.length > 0) ? args[0] : "";
  if (runNow.startsWith("sear") || runNow == "") {
    print("Running search.dart module");
    // Search stuff
    List<int> list = [7, 22, 0, 2, 5, 8, 10, 12, 15, 30];
    list.sort();
    print("=========================");
    print("sorted list:");
    print("    index : value");
    for (int i = 0; i < list.length; i++) {
      int el = list[i];
      print("\t$i : $el");
    }
    print("=========================");
    print("Linear Search");
    print('--------------');
    print(linearSearch(list, 8));
    print("\nBinary Search");
    print("------------");
    print(binarySearch(list, 10));
    print(binarySearch(list, 14));
    print("\n");
  }

  if (runNow.startsWith("outli") || runNow == "") {
    print("running outlier.dart module");
    // tribonacci
    print('###');
    print("tribonacciTime\nsignature: [0,0,1] n: 10");
    print(tribonacciTime([0, 0, 1], 10));
    // find the outlier
    print('\n###');
    print("find the outlier: [1, 3, 4, 5, 7]");
    print(find([1, 3, 4, 5, 7]));
    print("find the outlier: [2, 4, 5, 6]");
    print(find([2, 4, 5, 6]));
    print("n");
  }

  if (runNow.startsWith("class") || runNow == "") {
    print("running classy_dart.dart module");
    Person p = new Person("Bill", 8);
    print(p.name);
    print(p.age);
    Student s1 = new Student("Mark", 0);
    Student s2 = new Student("Julie", 7);
    s1.stud_name = "Marcus";
    print(s1.stud_name);
    print(s1.stud_age);
    print(s2.stud_name);
    print(s2.stud_age);
  }

  if (!runNow.startsWith("class") &&
      !runNow.startsWith("outli") &&
      !runNow.startsWith("sear") &&
      runNow != "") {
    print("no such module");
  }
}
