import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:write/UI/screens/forgotpassword.dart';
import 'package:write/UI/screens/signin.dart';
import 'package:write/services/navigation/app_navigation/navigation.dart';
import 'package:write/services/responsiveness/responsiveness.dart';
import 'package:write/services/utils/color.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
      width: config.yMargin(context, config.getYSize(context, 350)),
      height: config.xMargin(context, config.getXSize(context, 600)),
      child: Padding(
        padding: EdgeInsets.only(top: config.yMargin(context, 10)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _logo(),
              SizedBox(
                height: config.yMargin(context, 5),
              ),
              _form(),
              SizedBox(
                height: config.yMargin(context, 2),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18),
                child: GestureDetector(
                  onTap: () {
                    navigation.pushTo(context, ForgotPassword());
                  },
                  child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'Forgot Password ?',
                        style: GoogleFonts.poppins(
                            fontSize: config.textSize(context, 2),
                            fontWeight: FontWeight.w500),
                      )),
                ),
              ),
              SizedBox(
                height: config.yMargin(context, 2),
              ),
              _button(),
              SizedBox(
                height: config.yMargin(context, 2),
              ),
              GestureDetector(
                onTap: () {
                  navigation.pushTo(context, SignIn());
                },
                child: Text(
                  'No Account? Sign Up here',
                  style: GoogleFonts.poppins(
                      fontSize: config.textSize(context, 2.2),
                      fontWeight: FontWeight.w500),
                ),
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
              'LOGIN',
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
            'Username:',
            style:
                GoogleFonts.montserrat(fontSize: config.textSize(context, 2.7)),
          ),
          SizedBox(
            height: config.yMargin(context, 2),
          ),
          _textField(_emailController, false),
          SizedBox(
            height: config.yMargin(context, 2.4),
          ),
          Text(
            'Password:',
            style:
                GoogleFonts.montserrat(fontSize: config.textSize(context, 2.7)),
          ),
          SizedBox(
            height: config.yMargin(context, 2),
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
