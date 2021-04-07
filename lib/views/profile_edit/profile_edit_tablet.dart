part of profile_edit_view;

class _ProfileEditTablet extends StatelessWidget {
  final ProfileEditViewModel viewModel;

  _ProfileEditTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ProfileEditTablet')),
    );
  }
}