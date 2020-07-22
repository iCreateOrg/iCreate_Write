library text_field_widget;

import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/views/login/login_view_model.dart';

part 'text_field_mobile.dart';
part 'text_field_tablet.dart';
part 'text_field_desktop.dart';

class TextFieldWidget extends StatelessWidget {
  final bool password;
  final LoginViewModel viewModel;

  const TextFieldWidget({Key key, this.password, this.viewModel}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _TextFieldMobile(password: password, viewModel: viewModel,),
        desktop: _TextFieldDesktop(),
        tablet: _TextFieldTablet(),
    );
  }
}