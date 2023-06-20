class Soma {
  static final Soma instance = Soma._(0, 0);

  Soma._(this._numero1, this._numero2);

  double _numero1;
  double _numero2;

  double getNumero1() {
    return _numero1;
  }

  void setNumero1(numero1) {
    _numero1 = numero1;
  }

  double getNumero2() {
    return _numero2;
  }

  void setNumero2(numero2) {
    _numero2 = numero2;
  }
}
