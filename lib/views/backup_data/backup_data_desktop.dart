part of backup_data_view;

class _BackupDataDesktop extends StatelessWidget {
  final BackupDataViewModel viewModel;

  _BackupDataDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('BackupDataDesktop')),
    );
  }
}