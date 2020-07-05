import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:write/UI/screens/forgotpassword.dart';
import 'package:write/UI/screens/signin.dart';
import 'package:write/services/navigation/app_navigation/navigation.dart';
import 'package:write/services/responsiveness/responsiveness.dart';
import 'package:write/services/utils/color.dart';

import 'login.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  Navigation navigation = Navigation();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  SizeConfig config = SizeConfig();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              width: width,
              height: height,
              decoration: BoxDecoration(gradient: authGradient),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Image(
                image: AssetImage('assets/images/Vector 1.png'),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Image(
                image: AssetImage('assets/images/Vector 2.png'),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: _container(),
            )
          ],
        ),
      ),
    );
  }

  Widget _container() {
    return Container(
      // color: Colors.white,
      width: config.yMargin(context, config.getYSize(context, 350)),
      height: config.xMargin(context, config.getXSize(context, 700)),
      child: Padding(
        padding: EdgeInsets.only(top: config.yMargin(context, 22)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    navigation.pushFrom(context, Login());
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: Container(
                      child: SvgPicture.asset('assets/images/Vector 6.svg'),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: config.yMargin(context, 2),
              ),
              _form(),
              SizedBox(
                height: config.yMargin(context, 2),
              ),
              _button(),
              SizedBox(
                height: config.yMargin(context, 2),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _button() {
    return Builder(builder: (BuildContext _context) {
      return Container(
          width: config.xMargin(context, 70),
          height: config.yMargin(context, 7),
          child: MaterialButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
            onPressed: () {},
            color: blueColor,
            child: Text(
              'SIGN UP',
              style: GoogleFonts.montserrat(
                  fontSize: config.textSize(context, 2.7),
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
          ));
    });
  }

  Widget _form() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address:',
            style:
                GoogleFonts.montserrat(fontSize: config.textSize(context, 2.4)),
          ),
          SizedBox(
            height: config.yMargin(context, 1),
          ),
          _textField(_emailController, false),
          SizedBox(
            height: config.yMargin(context, 1),
          ),
          Text(
            'Create a username:',
            style:
                GoogleFonts.montserrat(fontSize: config.textSize(context, 2.4)),
          ),
          SizedBox(
            height: config.yMargin(context, 1),
          ),
          _textField(_passwordController, true),
          SizedBox(
            height: config.yMargin(context, 1),
          ),
          Text(
            'Password:',
            style:
                GoogleFonts.montserrat(fontSize: config.textSize(context, 2.4)),
          ),
          SizedBox(
            height: config.yMargin(context, 1),
          ),
          _textField(_passwordController, true),
          SizedBox(
            height: config.yMargin(context, 2.4),
          ),
          Text(
            'Confirm Password:',
            style:
                GoogleFonts.montserrat(fontSize: config.textSize(context, 2.4)),
          ),
          SizedBox(
            height: config.yMargin(context, 1),
          ),
          _textField(_passwordController, true)
        ],
      ),
    );
  }

  Widget _textField(TextEditingController controller, bool password) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(14)),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
            suffixIcon: password
                ? IconButton(icon: Icon(Icons.remove_red_eye), onPressed: () {})
                : SizedBox(),
            border: InputBorder.none),
      ),
    );
  }

  Widget _logo() {
    return Container(
      width: config.yMargin(context, config.getYSize(context, 200)),
      height: config.xMargin(context, config.getXSize(context, 80)),
      decoration: BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/Group 11 (2).png'),
      )),
    );
  }
}
