library backup_data_view;

import 'package:provider_architecture/provider_architecture.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'backup_data_view_model.dart';

part 'backup_data_mobile.dart';
part 'backup_data_tablet.dart';
part 'backup_data_desktop.dart';

class BackupDataView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    BackupDataViewModel viewModel = BackupDataViewModel();
    return ViewModelProvider<BackupDataViewModel>.withConsumer(
      viewModel: viewModel,
      onModelReady: (viewModel) {
        // Do something once your viewModel is initialized
      },
      builder: (context, viewModel, child) {
        return ScreenTypeLayout(
          mobile: _BackupDataMobile(viewModel),
          desktop: _BackupDataDesktop(viewModel),
          tablet: _BackupDataTablet(viewModel),  
        );
      }
    );
  }
}