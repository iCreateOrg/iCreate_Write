import 'package:write/core/base/base_view_model.dart';

class CreateNoteViewModel extends BaseViewModel {
  CreateNoteViewModel();

  List<String> _type = [
    "Note",
    "Task"
  ];

  String _currentType = "Note";
  String _content;
  bool _typing = false;

  String get content => _content;
  bool get typing => _typing;
  String get currentType => _currentType;
  List<String> get type => _type;

   void setState(String newType){
    _currentType = newType;
    notifyListeners();
  }

  void setContent(String content){
    _content = content;
    notifyListeners();
  }

  void setBool(bool state){
    _typing = state;
    notifyListeners();
  }
  // Add ViewModel specific code here
}