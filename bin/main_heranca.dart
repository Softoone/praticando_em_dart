import 'package:praticando_poo/poo_encapsulamento/person.dart';
import 'package:praticando_poo/poo_heranca/professor.dart';
import 'package:praticando_poo/poo_heranca/student.dart';
import 'package:praticando_poo/poo_heranca/worker.dart';

void main(List<String> args) {
  // final hprs = HPerson();
  final prs = Person(age: 25, gender: 'Female', name: 'Sandra');
  final al = Student('John', 15, 'Male', 'ADS');
  final prof = Professor('Jeremiah', 42, 'Male', 'superior');
  final wrk = Worker('Jim', 31, 'Male', true, 'Principal Office');

  prof.raiseSalary(500);
  // wrk.raiseSalary(500);
  // al.raiseSalary(500);

  al.cancelRegister();
  // prs.cancelRegister();
  // prof.cancelRegister();

  print(prs.toString());
  print(al.toString());
  print(prof.toString());
  print(wrk.toString());
}
