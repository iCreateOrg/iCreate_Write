part of contact_us_view;

class _ContactUsTablet extends StatelessWidget {
  final ContactUsViewModel viewModel;

  _ContactUsTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('ContactUsTablet')),
    );
  }
}