import 'package:write/core/base/base_view_model.dart';

class ProfileEditViewModel extends BaseViewModel {
  ProfileEditViewModel();

  DateTime _birthDate = DateTime.now();
  DateTime get birthDate => _birthDate;

  void setDate(DateTime date){
    _birthDate = date;
    notifyListeners();
  }
  
  // Add ViewModel specific code here
}