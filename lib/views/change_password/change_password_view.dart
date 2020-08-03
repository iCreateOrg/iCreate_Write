library change_password_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'change_password_view_model.dart';

part 'change_password_mobile.dart';
part 'change_password_tablet.dart';
part 'change_password_desktop.dart';

class ChangePasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ChangePasswordViewModel viewModel = ChangePasswordViewModel();
    return ViewModelProvider<ChangePasswordViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ChangePasswordMobile(viewModel),
          desktop: _ChangePasswordDesktop(viewModel),
          tablet: _ChangePasswordTablet(viewModel),  
        );
      }
    );
  }
}