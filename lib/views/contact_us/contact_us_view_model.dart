import 'package:write/core/base/base_view_model.dart';

class ContactUsViewModel extends BaseViewModel {
  ContactUsViewModel();
  bool _typing = false;

  bool get typing => _typing;

  void setBool(bool typing){
    _typing = typing;
    notifyListeners();
  }


  
  // Add ViewModel specific code here
}