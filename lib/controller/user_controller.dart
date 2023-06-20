import 'package:somador/model/user.dart';

class UserController {
  static final UserController instance = UserController();

  bool login() {
    String email = User.instance.getEmail();
    String password = User.instance.getPassword();
    if (email == 'admin@tsi.com.br' && password == 'master123') {
      return true;
    } else {
      return false;
    }
  }
}
