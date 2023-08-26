import 'package:flutter/material.dart';
import 'package:namer_app/core/store.dart';
import 'package:namer_app/pages/cart_page.dart';
import 'package:namer_app/pages/login_page.dart';
import 'package:namer_app/widgets/themes.dart';
import 'package:namer_app/utils/routes.dart';
import 'package:velocity_x/velocity_x.dart';
import 'pages/home_page.dart';

void main() {
  runApp(VxState(store: MyStore(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MyTheme.lightThemeData(context),
      debugShowCheckedModeBanner: false,
      darkTheme: MyTheme.darkThemeData(context),
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
