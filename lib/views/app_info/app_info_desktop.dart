part of app_info_view;

class _AppInfoDesktop extends StatelessWidget {
  final AppInfoViewModel viewModel;

  _AppInfoDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('AppInfoDesktop')),
    );
  }
}