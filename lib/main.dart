// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use

import 'package:countries/elements/routes.dart';
import 'package:countries/screens/region_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          fontFamily: GoogleFonts.poppins().fontFamily,
          cardColor: Colors.white,
          primaryColorLight: Color(0xfff5f5f5),
          primaryColorDark: Color(0xff403b58),
          accentColor: Color(0xff403b58),
          appBarTheme: AppBarTheme(
            color: Colors.white,
            elevation: 0.0,
            iconTheme: IconThemeData(color: Color(0xff403b58)),
            toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
            titleTextStyle: Theme.of(context).textTheme.headline6,
          )),
      initialRoute: MyRoutes.regionRoute,
      routes: {
        MyRoutes.regionRoute: (context) => RegionScreen(),
      },
    );
  }
}
