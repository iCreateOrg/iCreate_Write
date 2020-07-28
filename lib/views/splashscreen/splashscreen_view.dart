library splashscreen_view;

import 'dart:async';

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/navigator_service.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'package:write/views/home/home_view.dart';
import 'package:write/views/note_screen/note_screen_view.dart';
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
          Timer(Duration(seconds: 4), () {
            NavigatorService().navigateToPageWithReplacement<HomeView>(MaterialPageRoute(
                builder: (context) => HomeView(),
                settings: RouteSettings(name: 'Home')));
          });
        },
        builder: (context, viewModel, child) {
          return ScreenTypeLayout(
            mobile: _SplashscreenMobile(viewModel),
            desktop: _SplashscreenDesktop(viewModel),
            tablet: _SplashscreenTablet(viewModel),
          );
        });
  }
}
