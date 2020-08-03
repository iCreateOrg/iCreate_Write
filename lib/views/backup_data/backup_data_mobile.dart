part of backup_data_view;

class _BackupDataMobile extends StatelessWidget {
  final BackupDataViewModel viewModel;

  _BackupDataMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('BackupDataMobile')),
    );
  }
}