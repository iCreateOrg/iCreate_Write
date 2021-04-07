part of contact_us_view;

class _ContactUsDesktop extends StatelessWidget {
  final ContactUsViewModel viewModel;

  _ContactUsDesktop(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ContactUsDesktop')),
    );
  }
}