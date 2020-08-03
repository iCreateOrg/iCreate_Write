part of contact_us_view;

class _ContactUsMobile extends StatelessWidget {
  final ContactUsViewModel viewModel;

  _ContactUsMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: newBlue,
          centerTitle: true,
          title: Text(
            'CONTACT US',
            style: GoogleFonts.montserrat(
              letterSpacing: 2,
              color: Color(0xfff1f3f5),
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigation().pushToAndReplace(SettingsView()))),
      body: Center(child: Text('ContactUsMobile')),
    );
  }
}
