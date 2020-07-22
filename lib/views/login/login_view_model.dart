import 'package:write/core/base/base_view_model.dart';

class LoginViewModel extends BaseViewModel {
  LoginViewModel();

  String _username;

  String get username => _username;

  String _password;
  String get password => _password;

  void updateUsername(String username) {
    _username = username;
    notifyListeners();
  }

  void updatePasword(String password) {
    _password = password;
    notifyListeners();
  }
  
  // Add ViewModel specific code here
}