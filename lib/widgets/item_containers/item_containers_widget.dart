library item_containers_widget;

import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter/material.dart';
import 'package:write/services/responsiveness/responsiveness.dart';
import 'package:write/services/utils/color.dart';

part 'item_containers_mobile.dart';
part 'item_containers_tablet.dart';
part 'item_containers_desktop.dart';

class ItemContainersWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
        mobile: _ItemContainersMobile(),
        desktop: _ItemContainersDesktop(),
        tablet: _ItemContainersTablet(),
    );
  }
}