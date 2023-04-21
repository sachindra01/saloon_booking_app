import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salon_booking_app/views/pages/book.dart';
import 'package:salon_booking_app/views/pages/home.dart';
import 'package:salon_booking_app/views/pages/intro.dart';

import 'uidata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: GoogleFonts.ubuntuTextTheme(
          Theme.of(context).textTheme),
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const IntroPage(),
      routes: <String, WidgetBuilder>{
        UIData.homePageRoute: (BuildContext context) => const HomePage(),
        UIData.introPageRoute: (BuildContext context) => const IntroPage(),
        UIData.bookPageRoute: (BuildContext context) => const BookPage(),
      }
    );
  }
}

