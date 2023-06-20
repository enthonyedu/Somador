class User {
  static final User instance = User();

  late String _email;
  late String _password;

  String getEmail() {
    return _email;
  }

  void setEmail(email) {
    _email = email;
  }

  String getPassword() {
    return _password;
  }

  void setPassword(password) {
    _password = password;
  }
}
