import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:write/services/responsiveness/responsiveness.dart';
import 'package:write/services/utils/color.dart';


class HomeDrawer extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            width: SizeConfig().xMargin(context, 100),
            height: SizeConfig().yMargin(context, 10),
            color: blueColor,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(left: 18.0),
                child: Text('WRITE', style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: SizeConfig().textSize(context, 4.5)
                ),),
              ),
            ),
          ),
          DrawerItem(text: 'Show all documents'),
          DrawerItem(text: 'Just notes'),
          DrawerItem(text: 'Just tasks'),
          DrawerItem(text: 'See my reminders')
        ],
      ),
    );
  }
}

class DrawerItem extends StatelessWidget {
  final String text;
  final GestureTapCallback onTap;
  

  const DrawerItem({Key key, this.text, this.onTap}) : super(key: key);@override
  Widget build(BuildContext context) {
    return Container(
      height: SizeConfig().yMargin(context, 8),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0),
          child: Text(
            text, style: GoogleFonts.poppins(
              fontSize: SizeConfig().textSize(context, 2.6),
              fontWeight: FontWeight.w600
            ),
          ),
        ),
      ),
    );
  }
}