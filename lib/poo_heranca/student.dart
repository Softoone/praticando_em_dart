import 'package:praticando_poo/poo_encapsulamento/person.dart';

class Student extends Person {
  int register = 0;
  String course;

  Student(String name, int age, String gender,this.course)
      : super(name: name, age: age, gender: gender) {
    register++;
  }

  void toPayMensalCharge() {}
  void cancelRegister() {}

  @override
  String toString() {
    final stu = '''
Register number $register in the $course course
''';
    return super.toString() + stu;
  }
}
