import 'package:flutter/material.dart';
import 'package:personal_template/screens/projects.dart';
import 'package:personal_template/theme/color_schemes.g.dart';
import 'package:google_fonts/google_fonts.dart';

import 'common.dart';
import 'nav_host.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: name,
      theme: ThemeData(
        useMaterial3: true,
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.teal,
        colorScheme: lightColorScheme,
        textTheme: TextTheme(
          headline1: GoogleFonts.montserrat(
              fontSize: 97, fontWeight: FontWeight.w300, letterSpacing: -1.5),
          headline2: GoogleFonts.montserrat(
              fontSize: 61, fontWeight: FontWeight.w300, letterSpacing: -0.5),
          headline3:
              GoogleFonts.montserrat(fontSize: 48, fontWeight: FontWeight.w400),
          headline4: GoogleFonts.montserrat(
              fontSize: 34, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          headline5:
              GoogleFonts.montserrat(fontSize: 24, fontWeight: FontWeight.w400),
          headline6: GoogleFonts.montserrat(
              fontSize: 20, fontWeight: FontWeight.w500, letterSpacing: 0.15),
          subtitle1: GoogleFonts.montserrat(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.15),
          subtitle2: GoogleFonts.montserrat(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 0.1),
          bodyText1: GoogleFonts.openSans(
              fontSize: 16, fontWeight: FontWeight.w400, letterSpacing: 0.5),
          bodyText2: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w400, letterSpacing: 0.25),
          button: GoogleFonts.openSans(
              fontSize: 14, fontWeight: FontWeight.w500, letterSpacing: 1.25),
          caption: GoogleFonts.openSans(
              fontSize: 12, fontWeight: FontWeight.w400, letterSpacing: 0.4),
          overline: GoogleFonts.openSans(
              fontSize: 10, fontWeight: FontWeight.w400, letterSpacing: 1.5),
        ),
        chipTheme: const ChipThemeData(
          selectedColor: Color.fromRGBO(229, 252, 246, 1)
        )
      ),
      initialRoute: "/",
      routes: <String, WidgetBuilder>{
        "/": (BuildContext context) => const NavHost(),
        "/projects": (BuildContext context) => const Projects(),
      },
    );
  }
}
