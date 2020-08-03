part of profile_edit_view;

class _ProfileEditDesktop extends StatelessWidget {
  final ProfileEditViewModel viewModel;

  _ProfileEditDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProfileEditDesktop')),
    );
  }
}