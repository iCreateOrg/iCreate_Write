import 'package:device_preview/device_preview.dart';
import 'package:write/core/services/router.dart';
import 'package:write/views/forgotpassword/forgotpassword_view.dart';
import 'package:write/views/login/login_view.dart';
import 'package:write/views/note_screen/note_screen_view.dart';

import 'core/locator.dart';
import 'core/providers.dart';
import 'core/services/navigator_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'views/home/home_view.dart';
import 'views/signin/signin_view.dart';

void main() async {
  await LocatorInjector.setupLocator();

  runApp(
     MainApplication());
  // runApp(
  //   DevicePreview(builder: (BuildContext context) => MainApplication()));
}

class MainApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: ProviderInjector.providers,
      child: MaterialApp(
        // locale: DevicePreview.of(context).locale,
        // builder: DevicePreview.appBuilder,
        onGenerateRoute: generateRoute,
        routes: {
          '/login': (context) => LoginView(),
          '/signup': (context) => SigninView()
        },
        navigatorKey: navigatorKey,
        initialRoute: 'Splash',
      ),
    );
  }
}
