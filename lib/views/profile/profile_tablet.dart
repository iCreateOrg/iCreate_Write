part of profile_view;

class _ProfileTablet extends StatelessWidget {
  final ProfileViewModel viewModel;

  _ProfileTablet(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffF1f3f5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          'WRITE',
          style: GoogleFonts.montserrat(
            fontSize: SizeConfig().textSize(context, 2.6),
            fontWeight: FontWeight.normal,
            fontStyle: FontStyle.normal,
            color: Colors.white,
            // letterSpacing: 2,
          ),
        ),
        backgroundColor: newBlue,
      ),
      body: Column(
        children: [
          Container(
            width: width,
            height: McGyver.rsDoubleH(context, 8),
            decoration: BoxDecoration(
              color: Color(0xffF1F3F5),
              boxShadow: [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.15),
                  offset: Offset(0.0, 4.0), //(x,y)
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.home,
                      size: 40,
                    ),
                    onPressed: () => Navigation().pushToAndReplace(HomeView()),
                  ),
                  Text(
                    'Profile',
                    style: GoogleFonts.montserrat(
                      fontSize: SizeConfig().textSize(context, 3),
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff000000),
                      letterSpacing: 2,
                    ),
                  ),
                  Icon(Icons.settings, size: 40),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
              child: Container(
                width: width,
                // height: height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color(0xffffffff),
                  Color(0xffF1f3f5),
                ], stops: [
                  0,
                  0.72
                ])),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 6, horizontal: 20),
                  child: ListView(
                    children: [
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 2, color: newBlue)),
                        child: CircleAvatar(
                          radius: 90,
                          backgroundColor: Colors.red,
                        ),
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Awa Felix',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: SizeConfig().textSize(context, 2.6),
                            fontWeight: FontWeight.normal,
                            fontStyle: FontStyle.normal,
                            color: Color(0xff8a8c92),
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 10),
                      ),
                      Row(
                        children: [
                          Text(
                            'First Name: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 5),
                          ),
                          Text(
                            'iCreate',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Last Name: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 5),
                          ),
                          Text(
                            'iCreate',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Email: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 17),
                          ),
                          Text(
                            'iCreate@gmail.com',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Username: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 6.7),
                          ),
                          Text(
                            'iCreate',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Notes: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 17),
                          ),
                          Text(
                            '5',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Tasks: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 17),
                          ),
                          Text(
                            '2',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Reminders: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 5),
                          ),
                          Text(
                            '7',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Row(
                        children: [
                          Text(
                            'Shared Notes: ',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff736a6a),
                              letterSpacing: 2,
                            ),
                          ),
                          SizedBox(
                            width: McGyver.rsDoubleW(context, 5),
                          ),
                          Text(
                            '0',
                            style: GoogleFonts.montserrat(
                              fontSize: SizeConfig().textSize(context, 2.2),
                              fontWeight: FontWeight.normal,
                              fontStyle: FontStyle.normal,
                              color: Color(0xff000000),
                              letterSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: McGyver.rsDoubleW(context, 5),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: McGyver.rsDoubleW(context, 25),
                          height: McGyver.rsDoubleH(context, 8),
                          decoration: BoxDecoration(
                              color: Color(0xfffcfcfd),
                              borderRadius: BorderRadius.circular(8),
                              border:
                                  Border.all(width: 1, color: Color(0xff494ec4))),
                          child: Center(
                            child: Text(
                              'EDIT',
                              style: GoogleFonts.montserrat(
                                fontSize: SizeConfig().textSize(context, 2.2),
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                color: Color(0xff000000),
                                letterSpacing: 2,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
