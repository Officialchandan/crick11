
import 'package:crick11/ui/home.dart';
import 'package:crick11/utility/utility.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(const MyApp());

//https://www.freepik.com/premium-vector/abstract-batsman-playing-cricket-from-splash-watercolors-illustration-paints_9937225.htm#query=cricket%20game%20poster&position=20&from_view=search

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Crick11';

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: _title,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        backgroundColor: Colors.white,
        scaffoldBackgroundColor: Colors.white.withOpacity(0.95),
        primaryColor: MyColors.primary,
          fontFamily: GoogleFonts.dosis().fontFamily,

      ),
      home: const HomeScreen(),
    );
  }
}


