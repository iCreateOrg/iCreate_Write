part of app_info_view;

class _AppInfoTablet extends StatelessWidget {
  final AppInfoViewModel viewModel;

  _AppInfoTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
          backgroundColor: newBlue,
          centerTitle: true,
          title: Text(
            'APP INFO',
            style: GoogleFonts.montserrat(
              letterSpacing: 2,
              color: Color(0xfff1f3f5),
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigation().pushToAndReplace(SettingsView()))),
      body: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/images/group.png'),
          ),
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/Group 11 (1).png'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.copyright,
                    color: Color(0xffbebdbd),
                  ),
                  SizedBox(width: 10),
                  Text(
                    '2019-2020 iCreate Inc.',
                    style: GoogleFonts.montserrat(
                        fontSize: SizeConfig().textSize(context, 2.2),
                        color: Color(0xffbebdbd),
                        fontWeight: FontWeight.normal),
                  )
                ],
              ),
              Text(
                'Version 1.00.00',
                style: GoogleFonts.montserrat(
                    fontSize: SizeConfig().textSize(context, 2.2),
                    color: Color(0xff978e8e),
                    fontWeight: FontWeight.normal),
              )
            ],
          ),
        ),
      ),
    );
  }
}
