part of profile_edit_view;

class _ProfileEditMobile extends StatelessWidget {
  final ProfileEditViewModel viewModel;

  _ProfileEditMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('yyyy-MM-dd');
    final String formatted = formatter.format(viewModel.birthDate);
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('WRITE'),
        centerTitle: false,
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Edit Profile',
                    style: GoogleFonts.montserrat(
                      fontSize: SizeConfig().textSize(context, 3),
                      fontWeight: FontWeight.normal,
                      fontStyle: FontStyle.normal,
                      color: Color(0xff000000),
                      letterSpacing: 2,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
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
                        radius: 50,
                        backgroundColor: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: McGyver.rsDoubleW(context, 3),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Change Avatar',
                        style: GoogleFonts.montserrat(
                          fontSize: SizeConfig().textSize(context, 2.6),
                          fontWeight: FontWeight.normal,
                          fontStyle: FontStyle.normal,
                          decoration: TextDecoration.underline,
                          color: Color(0xff000000),
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
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: Color(0xff000693))),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextFormField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        )
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
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: Color(0xff000693))),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextFormField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        )
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
                        Expanded(
                          child: Container(
                            height: 40,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(
                                    width: 1, color: Color(0xff000693))),
                            child: Center(
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 8.0),
                                child: TextFormField(
                                  decoration:
                                      InputDecoration(border: InputBorder.none),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: McGyver.rsDoubleW(context, 5),
                    ),
                    Row(
                      children: [
                        Text(
                          'Date of Birth: ',
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
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              // DatePicker.showDatePicker(context,
                              //     showTitleActions: true,
                              //     minTime: DateTime(1000, 3, 5),
                              //     maxTime: DateTime(3000, 6, 7),
                              //     theme: DatePickerTheme(
                              //         headerColor: Colors.green,
                              //         backgroundColor: newBlue,
                              //         itemStyle: TextStyle(
                              //             color: Colors.white,
                              //             fontWeight: FontWeight.bold,
                              //             fontSize: 18),
                              //         doneStyle: TextStyle(
                              //             color: Colors.white,
                              //             fontSize: 16)), onChanged: (date) {
                              //   print('change $date in time zone ' +
                              //       date.timeZoneOffset.inHours.toString());
                              // }, onConfirm: (date) {
                              //   print('confirm $date');
                              //   viewModel.setDate(date);
                              // },
                              //     currentTime: DateTime.now(),
                              //     locale: LocaleType.en);
                            },
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      width: 1, color: Color(0xff000693))),
                              child: Center(
                                child: Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 8.0),
                                    child: Text(formatted)),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: McGyver.rsDoubleW(context, 5),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.green,
                    onPressed: () {},
                    child: Text(
                      'SAVE',
                      style: GoogleFonts.montserrat(
                          fontSize: SizeConfig().textSize(context, 2),
                          color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10),
                  FlatButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    color: Colors.red,
                    onPressed: () =>
                        Navigation().pushToAndReplace(ProfileView()),
                    child: Text(
                      'CANCEL',
                      style: GoogleFonts.montserrat(
                          fontSize: SizeConfig().textSize(context, 2),
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
