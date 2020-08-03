part of backup_data_view;

class _BackupDataTablet extends StatelessWidget {
  final BackupDataViewModel viewModel;

  _BackupDataTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('BackupDataTablet')),
    );
  }
}