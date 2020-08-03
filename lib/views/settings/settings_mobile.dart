part of settings_view;

class _SettingsMobile extends StatelessWidget {
  final SettingsViewModel viewModel;

  _SettingsMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: newBlue,
        centerTitle: true,
        title: Text(
          'SETTINGS',
          style: GoogleFonts.montserrat(
            letterSpacing: 2,
            color: Color(0xfff1f3f5),
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
            icon: Icon(Icons.home),
            onPressed: () => Navigation().pushToAndReplace(HomeView())),
        actions: [
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () => Navigation().pushToAndReplace(ProfileView()))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: McGyver.rsDoubleW(context, 2),
              vertical: McGyver.rsDoubleH(context, 3)),
          child: Column(
            children: [
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: width,
                  height: McGyver.rsDoubleH(context, 32),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: McGyver.rsDoubleW(context, 3),
                        vertical: McGyver.rsDoubleW(context, 3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Notifications',
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.5),
                              color: Color(0xff0711fd)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: McGyver.rsDoubleW(context, 7)),
                          child: Row(
                            children: [
                              Text(
                                'Sounds',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig().textSize(context, 2.5),
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Switch(
                                activeColor: Color(0xff2d34da),
                                activeTrackColor: Color(0xff8eade9),
                                inactiveThumbColor: Color(0xffbcc0ca),
                                inactiveTrackColor: Color(0xffd8dde8),
                                value: viewModel.active,
                                onChanged: (value) {
                                  viewModel.setBool(value);
                                },
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: McGyver.rsDoubleW(context, 7)),
                          child: Row(
                            children: [
                              Text(
                                'Vibration',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig().textSize(context, 2.5),
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Switch(
                                  activeColor: Color(0xff2d34da),
                                  activeTrackColor: Color(0xff8eade9),
                                  inactiveThumbColor: Color(0xffbcc0ca),
                                  inactiveTrackColor: Color(0xffd8dde8),
                                  value: false,
                                  onChanged: null)
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: McGyver.rsDoubleW(context, 7)),
                          child: Row(
                            children: [
                              Text(
                                'Popup Reminder',
                                style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w500,
                                  fontSize: SizeConfig().textSize(context, 2.5),
                                  color: Colors.black,
                                ),
                              ),
                              Spacer(),
                              Switch(
                                  activeColor: Color(0xff2d34da),
                                  activeTrackColor: Color(0xff8eade9),
                                  inactiveThumbColor: Color(0xffbcc0ca),
                                  inactiveTrackColor: Color(0xffd8dde8),
                                  value: true,
                                  onChanged: null)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: width,
                  height: McGyver.rsDoubleH(context, 40),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: McGyver.rsDoubleW(context, 2),
                      vertical: McGyver.rsDoubleH(context, 3),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Account',
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.5),
                              color: Color(0xff0711fd)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: McGyver.rsDoubleW(context, 7),
                          ),
                          child: Text(
                            'Change Password',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig().textSize(context, 2.5),
                                color: Color(0xff000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: McGyver.rsDoubleW(context, 7),
                          ),
                          child: Text(
                            'Backup Data',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig().textSize(context, 2.5),
                                color: Color(0xff000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: McGyver.rsDoubleW(context, 7),
                          ),
                          child: Text(
                            'Delete my Account',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig().textSize(context, 2.5),
                                color: Color(0xff000000)),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: McGyver.rsDoubleW(context, 7),
                          ),
                          child: Text(
                            'Set Up Fingerprint',
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.w500,
                                fontSize: SizeConfig().textSize(context, 2.5),
                                color: Color(0xff000000)),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  width: width,
                  height: McGyver.rsDoubleH(context, 32),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: McGyver.rsDoubleW(context, 3),
                        vertical: McGyver.rsDoubleW(context, 3)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Text(
                          'Help',
                          style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.5),
                              color: Color(0xff0711fd)),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: McGyver.rsDoubleW(context, 7)),
                          child: Row(
                            children: [
                              Icon(Icons.people),
                              SizedBox(width: 10),
                              Text(
                                'Contact us',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.5),
                                    color: Color(0xff000000)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: McGyver.rsDoubleW(context, 7)),
                          child: Row(
                            children: [
                              Icon(Icons.help),
                              SizedBox(width: 10),
                              Text(
                                'App Info',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.5),
                                    color: Color(0xff000000)),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: McGyver.rsDoubleW(context, 7)),
                          child: Row(
                            children: [
                              Icon(Icons.wb_sunny),
                              SizedBox(width: 10),
                              Text(
                                'Dark Mode',
                                style: GoogleFonts.montserrat(
                                    fontWeight: FontWeight.w500,
                                    fontSize:
                                        SizeConfig().textSize(context, 2.5),
                                    color: Color(0xff000000)),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
