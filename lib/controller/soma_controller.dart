import 'package:somador/model/soma.dart';

class SomaController {
  static final SomaController instance = SomaController();

  double soma() {
    double resultado = 0.00;
    resultado = Soma.instance.getNumero1() + Soma.instance.getNumero2();
    return resultado;
  }
}
