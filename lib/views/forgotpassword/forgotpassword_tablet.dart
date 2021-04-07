part of forgotpassword_view;

class _ForgotpasswordTablet extends StatelessWidget {
  final ForgotpasswordViewModel viewModel;

  _ForgotpasswordTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ForgotpasswordTablet')),
    );
  }
}