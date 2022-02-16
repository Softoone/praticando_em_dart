import 'package:praticando_poo/poo_encapsulamento/person.dart';

class Professor extends Person {
  late String specialty;
  late double salary;

  Professor(String name, int age, String gender, this.specialty)
      : super(age: age, gender: gender, name: name) {
    switch (specialty) {
      case 'technicall':
        salary = 500;
        return;

      case 'superior':
        salary = 800;
        return;
      default:
        salary = 500;
    }
  }

  void raiseSalary(double value) {
    salary += value;
  }

  @override
  String toString() {
    final profString = '''
$salary dollars
$specialty grade
''';
    return super.toString() + profString;
  }
}
