import 'package:praticando_poo/poo_heranca/student.dart';

class HolderStudent extends Student {
  late int holderRegist;

  HolderStudent(String name, int age, String gender, String course)
      : super(name, age, gender, course) {
    holderRegist++;
  }

  void renewHolding() {
    print('Your holding was renewed for the next period');
  }

  @override
  void toPayMensalCharge() {
    print("Holding's discount was applied, your charge will be 50% off");
  }
}
