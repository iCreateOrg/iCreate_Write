part of change_password_view;

class _ChangePasswordMobile extends StatelessWidget {
  final ChangePasswordViewModel viewModel;

  _ChangePasswordMobile(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: newBlue,
          centerTitle: true,
          title: Text(
            'CHANGE PASSWORD',
            style: GoogleFonts.montserrat(
              letterSpacing: 2,
              color: Color(0xfff1f3f5),
              fontWeight: FontWeight.bold,
            ),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () => Navigation().pushToAndReplace(SettingsView())),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: McGyver.rsDoubleW(context, 6)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: McGyver.rsDoubleH(context, 10),
                ),
                Text(
                  'Old Password',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig().textSize(context, 2.2)),
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 2),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffb6b9f3),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffb6b9f3),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffb6b9f3),
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 6),
                ),
                Text(
                  'New Password',
                  style: GoogleFonts.montserrat(
                      letterSpacing: 2,
                      color: Color(0xff000000),
                      fontWeight: FontWeight.w500,
                      fontSize: SizeConfig().textSize(context, 2.2)),
                ),
                SizedBox(
                  height: McGyver.rsDoubleH(context, 2),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffb6b9f3),
                            )),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffb6b9f3),
                            )),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              width: 1,
                              color: Color(0xffb6b9f3),
                            )),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: McGyver.rsDoubleH(context, 10)),
                MaterialButton(
                  height: McGyver.rsDoubleH(context, 8),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  onPressed: () {},
                  color: newBlue,
                  child: Text(
                    'CONFIRM CHANGE',
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
