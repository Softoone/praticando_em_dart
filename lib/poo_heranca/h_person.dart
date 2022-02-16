abstract class HPerson {
  late String name;
  late int age;
  late String gender;

  HPerson(this.name, this.age, this.gender);


  void happyBirthday() {
    age++;
    print("It's your ${age}th birthday");
  }

  @override
  String toString() {
    final string = '''
$name
$age yo
$gender
''';
    return string;
  }
}
