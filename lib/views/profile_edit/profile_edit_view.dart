library profile_edit_view;

// import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
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
import 'package:write/widgets/text_field/text_field_widget.dart';
import 'profile_edit_view_model.dart';
import 'package:intl/intl.dart';

part 'profile_edit_mobile.dart';
part 'profile_edit_tablet.dart';
part 'profile_edit_desktop.dart';

class ProfileEditView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProfileEditViewModel viewModel = ProfileEditViewModel();
    return ViewModelProvider<ProfileEditViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _ProfileEditMobile(viewModel),
          desktop: _ProfileEditDesktop(viewModel),
          tablet: _ProfileEditTablet(viewModel),  
        );
      }
    );
  }
}