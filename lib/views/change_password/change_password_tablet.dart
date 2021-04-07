part of change_password_view;

class _ChangePasswordTablet extends StatelessWidget {
  final ChangePasswordViewModel viewModel;

  _ChangePasswordTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ChangePasswordTablet')),
    );
  }
}