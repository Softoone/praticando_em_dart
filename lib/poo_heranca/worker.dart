import 'package:praticando_poo/poo_encapsulamento/person.dart';

class Worker extends Person {
  String workSector;
  bool? isWorking;

  Worker(String name, int age, String gender,this.isWorking,this.workSector)
      : super(age: age, name: name, gender: gender);
}
