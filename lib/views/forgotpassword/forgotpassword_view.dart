library forgotpassword_view;

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'package:write/widgets/text_field/text_field_widget.dart';
import 'forgotpassword_view_model.dart';

part 'forgotpassword_mobile.dart';
part 'forgotpassword_tablet.dart';
part 'forgotpassword_desktop.dart';

class ForgotpasswordView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ForgotpasswordViewModel viewModel = ForgotpasswordViewModel();
    return ViewModelProvider<ForgotpasswordViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ForgotpasswordMobile(viewModel),
          desktop: _ForgotpasswordDesktop(viewModel),
          tablet: _ForgotpasswordTablet(viewModel),  
        );
      }
    );
  }
}