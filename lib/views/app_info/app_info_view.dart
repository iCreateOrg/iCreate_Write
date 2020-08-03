library app_info_view;

import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/navigation/app_navigation/navigation.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'package:write/views/settings/settings_view.dart';
import 'app_info_view_model.dart';

part 'app_info_mobile.dart';
part 'app_info_tablet.dart';
part 'app_info_desktop.dart';

class AppInfoView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppInfoViewModel viewModel = AppInfoViewModel();
    return ViewModelProvider<AppInfoViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _AppInfoMobile(viewModel),
          desktop: _AppInfoDesktop(viewModel),
          tablet: _AppInfoTablet(viewModel),  
        );
      }
    );
  }
}