part of signin_view;

class _SigninTablet extends StatelessWidget {
  final SigninViewModel viewModel;

  _SigninTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SigninTablet')),
    );
  }
}