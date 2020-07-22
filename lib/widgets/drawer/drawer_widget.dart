library drawer_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/core/services/responsiveness/responsiveness.dart';
import 'package:write/theme/utils/color.dart';

part 'drawer_mobile.dart';
part 'drawer_tablet.dart';
part 'drawer_desktop.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _DrawerMobile(),
        desktop: _DrawerDesktop(),
        tablet: _DrawerTablet(),
    );
  }
}