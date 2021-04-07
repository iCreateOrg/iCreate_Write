library note_screen_view;

import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/navigator_service.dart';
import 'package:write/core/services/responsiveness/altres.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'note_screen_view_model.dart';

part 'note_screen_mobile.dart';
part 'note_screen_tablet.dart';
part 'note_screen_desktop.dart';

class NoteScreenView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    NoteScreenViewModel viewModel = NoteScreenViewModel();
    return ViewModelProvider<NoteScreenViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _NoteScreenMobile(viewModel),
          desktop: _NoteScreenDesktop(viewModel),
          tablet: _NoteScreenTablet(viewModel),  
        );
      }
    );
  }
}