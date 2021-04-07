library create_note_view;

import 'package:google_fonts/google_fonts.dart';
import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/navigator_service.dart';
import 'package:write/core/services/responsiveness/altres.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';
import 'create_note_view_model.dart';

part 'create_note_mobile.dart';
part 'create_note_tablet.dart';
part 'create_note_desktop.dart';

class CreateNoteView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    CreateNoteViewModel viewModel = CreateNoteViewModel();
    return ViewModelProvider<CreateNoteViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _CreateNoteMobile(viewModel),
          desktop: _CreateNoteDesktop(viewModel),
          tablet: _CreateNoteTablet(viewModel),  
        );
      }
    );
  }
}