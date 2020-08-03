import 'package:write/core/base/base_view_model.dart';

class SettingsViewModel extends BaseViewModel {
  SettingsViewModel();
  bool _active = false;
  bool get active => _active;

  void setBool(bool active){
    _active = active;
    notifyListeners();
  }


  
  // Add ViewModel specific code here
}