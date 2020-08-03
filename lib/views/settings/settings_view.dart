library settings_view;

import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/navigation/app_navigation/navigation.dart';
import 'package:write/core/services/responsiveness/altres.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'package:write/views/home/home_view.dart';
import 'package:write/views/profile/profile_view.dart';
import 'settings_view_model.dart';

part 'settings_mobile.dart';
part 'settings_tablet.dart';
part 'settings_desktop.dart';

class SettingsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SettingsViewModel viewModel = SettingsViewModel();
    return ViewModelProvider<SettingsViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _SettingsMobile(viewModel),
          desktop: _SettingsDesktop(viewModel),
          tablet: _SettingsTablet(viewModel),  
        );
      }
    );
  }
}