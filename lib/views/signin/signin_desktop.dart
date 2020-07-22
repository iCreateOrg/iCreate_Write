part of signin_view;

class _SigninDesktop extends StatelessWidget {
  final SigninViewModel viewModel;

  _SigninDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('SigninDesktop')),
    );
  }
}