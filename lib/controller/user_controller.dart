class UserController {
  static final UserController instance = UserController();

  bool login(String email, String password){
    if (email == 'admin@tsi.com.br' && password == 'master123') {
      return true;
    } else {
      return false;
    }
  }
  
}