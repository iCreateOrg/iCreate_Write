part of note_screen_view;

class _NoteScreenMobile extends StatelessWidget {
  final NoteScreenViewModel viewModel;

  _NoteScreenMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('WRITE'),
          backgroundColor: newBlue,
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => NavigatorService().pop()),
        ),
        body: Container(
          margin: EdgeInsets.only(
            top: McGyver.rsDoubleH(context, 4),
            left: McGyver.rsDoubleW(context, 2),
            right: McGyver.rsDoubleW(context, 2),
          ),
          width: width,
          decoration: BoxDecoration(
              color: Color(0xffF1F3F5),
              borderRadius: BorderRadius.circular(15)),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.star,
                                color: Color(0xff000693),
                              ),
                              onPressed: () {}),
                          Text(
                            'MY FIRST TIME',
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: GoogleFonts.montserrat(
                                fontWeight: FontWeight.bold,
                                color: Color(0xff000693),
                                fontSize: SizeConfig().textSize(context, 3.4)),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.share,
                                color: Color(0xff000693),
                              ),
                              onPressed: () {}),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: McGyver.rsDoubleW(context, 8),
                            top: McGyver.rsDoubleH(context, 2)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Type: Note",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff363D48),
                                  fontSize: SizeConfig().textSize(context, 2)),
                            ),
                            Text(
                              "Created: 21st May, 2020",
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff363D48),
                                  fontSize: SizeConfig().textSize(context, 2)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                width: width,
                height: McGyver.rsDoubleH(context, 20),
                decoration: BoxDecoration(
                    color: Color(0xffB2B6BB),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15))),
              ),
              Expanded(
                child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: McGyver.rsDoubleW(context, 4),
                    ),
                    child: ListView(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(height: McGyver.rsDoubleH(context, 3)),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                          style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff121111),
                              fontSize: SizeConfig().textSize(context, 2.3)),
                          textAlign: TextAlign.justify,
                        ),
                        Text('End'),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                          style: GoogleFonts.montserrat(
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.normal,
                              color: Color(0xff121111),
                              fontSize: SizeConfig().textSize(context, 2.3)),
                          textAlign: TextAlign.justify,
                        ),
                        SizedBox(height: McGyver.rsDoubleH(context, 3)),
                        Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Length: 1022 words',
                              style: GoogleFonts.montserrat(
                                  fontStyle: FontStyle.normal,
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xff1F1E1E),
                                  fontSize:
                                      SizeConfig().textSize(context, 1.8)),
                            )),
                        SizedBox(height: McGyver.rsDoubleH(context, 3)),
                      ],
                    )),
              )
            ],
          ),
        ));
  }
}
