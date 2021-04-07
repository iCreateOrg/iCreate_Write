import 'package:flutter/services.dart';

import 'package:flutter/material.dart';
import 'package:write/core/services/navigation/page_transtions/animations.dart';
import 'package:write/core/services/navigator_service.dart';

class Navigation {
  ///Navigates from a base screen to another screen with backward animation and with replacement
  pushFrom(Widget child) {
    NavigatorService().navigateToPage(
        MaterialPageRoute(builder: (_) => BackwardAnimation(child: child)));
  }

  ///Navigates from a base screen to another screen with forward animation
  pushTo(Widget child) {
    NavigatorService().navigateToPage(
        MaterialPageRoute(builder: (_) => ForwardAnimation(child: child)));
  }

  ///Navigates from a base screen to another screen with forward animation and with replacement
  pushToAndReplace(Widget child) {
    NavigatorService().navigateToPageWithReplacement(
        MaterialPageRoute(builder: (_) => ForwardAnimation(child: child)));
  }

  ///Exits application
  pop(BuildContext context) {
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
  }
}
