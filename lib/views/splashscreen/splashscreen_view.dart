library splashscreen_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'splashscreen_view_model.dart';

part 'splashscreen_mobile.dart';
part 'splashscreen_tablet.dart';
part 'splashscreen_desktop.dart';

class SplashscreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SplashscreenViewModel viewModel = SplashscreenViewModel();
    return ViewModelProvider<SplashscreenViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _SplashscreenMobile(viewModel),
          desktop: _SplashscreenDesktop(viewModel),
          tablet: _SplashscreenTablet(viewModel),  
        );
      }
    );
  }
}