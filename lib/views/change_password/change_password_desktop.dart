part of change_password_view;

class _ChangePasswordDesktop extends StatelessWidget {
  final ChangePasswordViewModel viewModel;

  _ChangePasswordDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ChangePasswordDesktop')),
    );
  }
}