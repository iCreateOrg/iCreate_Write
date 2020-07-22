part of forgotpassword_view;

class _ForgotpasswordDesktop extends StatelessWidget {
  final ForgotpasswordViewModel viewModel;

  _ForgotpasswordDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ForgotpasswordDesktop')),
    );
  }
}