import 'package:flutter/material.dart';
import 'package:write/services/responsiveness/responsiveness.dart';
import 'package:write/services/utils/color.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SizeConfig config = SizeConfig();

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: width,
            height: height,
            decoration: BoxDecoration(
              gradient: gradient
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: _logo()),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: config.yMargin(context, 4)),
              child: _text()))
        ],
      ),
    );
  }

  Widget _logo(){
    return Container(
      width: config.xMargin(context, config.getXSize(context, 290)),
      height: config.yMargin(context, config.getYSize(context, 250)),
      // color: Colors.white,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/lf30_AGoC3n.json].png'))
      ),
    );
  }

  Widget _text(){
    return Container(
      width: config.xMargin(context, config.getXSize(context, 250)),
      height: config.yMargin(context, config.getYSize(context, 75)),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.contain,
          image: AssetImage('assets/images/Group 11 (1).png'))
      ),
    );
  }
}