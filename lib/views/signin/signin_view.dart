library signin_view;

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/services/responsiveness/responsiveness.dart';
import 'package:write/services/utils/color.dart';
import 'package:write/widgets/text_field/text_field_widget.dart';
import 'signin_view_model.dart';

part 'signin_mobile.dart';
part 'signin_tablet.dart';
part 'signin_desktop.dart';

class SigninView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SigninViewModel viewModel = SigninViewModel();
    return ViewModelProvider<SigninViewModel>.withConsumer(
      
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _SigninMobile(viewModel),
          desktop: _SigninDesktop(viewModel),
          tablet: _SigninTablet(viewModel),  
        );
      }
    );
  }
}