library contact_us_view;

import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/navigation/app_navigation/navigation.dart';
import 'package:write/theme/utils/color.dart';
import 'package:write/views/settings/settings_view.dart';
import 'contact_us_view_model.dart';

part 'contact_us_mobile.dart';
part 'contact_us_tablet.dart';
part 'contact_us_desktop.dart';

class ContactUsView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ContactUsViewModel viewModel = ContactUsViewModel();
    return ViewModelProvider<ContactUsViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ContactUsMobile(viewModel),
          desktop: _ContactUsDesktop(viewModel),
          tablet: _ContactUsTablet(viewModel),  
        );
      }
    );
  }
}