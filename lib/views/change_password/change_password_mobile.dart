part of change_password_view;

class _ChangePasswordMobile extends StatelessWidget {
  final ChangePasswordViewModel viewModel;

  _ChangePasswordMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ChangePasswordMobile')),
    );
  }
}