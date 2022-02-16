import 'package:praticando_poo/poo_heranca/student.dart';

class TechStudent extends Student {
  TechStudent(String name, int age, String gender, String course)
      : super(name, age, gender, course);

  @override
  void toPayMensalCharge() {
    print('');
  }
}
