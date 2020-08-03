part of contact_us_view;

class _ContactUsMobile extends StatelessWidget {
  final ContactUsViewModel viewModel;

  _ContactUsMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
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
                onPressed: () =>
                    Navigation().pushToAndReplace(SettingsView()))),
        body: SingleChildScrollView(
          child: Padding(
            padding:
                EdgeInsets.symmetric(horizontal: McGyver.rsDoubleW(context, 8)),
            child: Column(
              children: [
                SizedBox(height: McGyver.rsDoubleH(context, 10)),
                GestureDetector(
                  onTap: () => viewModel.setBool(true),
                  child: Container(
                    width: width,
                    height: McGyver.rsDoubleH(context, 50),
                    decoration: BoxDecoration(
                      color: Color(0xffF7F8F9),
                      border: Border.all(color: Color(0xffd4dff4), width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Color.fromRGBO(0, 0, 0, 0.1),
                          offset: Offset(0.0, 1.0), //(x,y)
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: !viewModel.typing
                        ? Center(
                            child: Text(
                              'Type here...',
                              style: GoogleFonts.montserrat(
                                fontSize: SizeConfig().textSize(context, 3),
                                fontWeight: FontWeight.normal,
                                fontStyle: FontStyle.normal,
                                color: Color(0xffDCCECE),
                                letterSpacing: 2,
                              ),
                            ),
                          )
                        : Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextFormField(
                              keyboardType: TextInputType.multiline,
                              maxLines: null,
                              maxLengthEnforced: false,
                              minLines: null,
                              expands: true,
                              decoration:
                                  InputDecoration(border: InputBorder.none),
                            ),
                          ),
                  ),
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 10)),
                MaterialButton(
                height: 50,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  onPressed: () {},
                  color: newBlue,
                  child: Text(
                    'SEND MESSAGE',
                    style: GoogleFonts.montserrat(
                      letterSpacing: 2,
                      color: Color(0xfff1f3f5),
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
