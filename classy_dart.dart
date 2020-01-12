class Person {
  String name;
  int age;

  /// A class for making people. Accepts a [name] and an [age]
  Person(String name, int age) {
    this.name = name;
    this.age = age;
  }
}

class Student extends Person {
  /**
   * A class for Students extend Person class
   *
   * this extends the Person constructor but also checks to make sure the [age] is greater than 5.
   * if an [age] less than 5 `null` is entered
   *
   * presumably, the institution only has grades starting at age 5.
   */
  Student(String name, int age) : super(name, (age >= 5) ? age : null) {
    if (this.age == null) {
      String sname = this.stud_name;
      print("$sname's age should be greater than 5");
    }
  }

  String get stud_name {
    return name;
  }

  void set stud_name(String name) {
    String oldName = this.name;
    print("changing Student: $oldName's name to $name");
    this.name = name;
  }

  int get stud_age {
    return age;
  }
}
