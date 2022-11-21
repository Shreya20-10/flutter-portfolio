import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color kGrey = const Color(0xFF334055);
Color kPrimaryColor = const Color(0xFF334055);
Color kWhite = Colors.white;
Color kBlack = Colors.black;

TextStyle kTitleText = GoogleFonts.poppins(
  color: Colors.white,
  fontSize: 35.0,
  wordSpacing: 4.0,
  fontWeight: FontWeight.bold,
);

TextStyle kSubTitleText = GoogleFonts.montserrat(
  color: Colors.white70,
  fontWeight: FontWeight.bold,
  fontSize: 16.0,
);

TextStyle kSectionTitleText = GoogleFonts.montserrat(
  color: Colors.white70,
  fontWeight: FontWeight.bold,
  fontSize: 22.0,
);

ElevatedButtonThemeData elevatedButtonThemeData = ElevatedButtonThemeData(
  style: ButtonStyle(
    backgroundColor: MaterialStateColor.resolveWith((states) => kGrey),
    foregroundColor: MaterialStateColor.resolveWith(
      (Set<MaterialState> states) {
        if (states.contains(MaterialState.hovered)) return Colors.black;
        if (states.contains(MaterialState.focused) ||
            states.contains(MaterialState.pressed)) return Colors.white;
        return kGrey; // Defer to the widget's default.
      },
    ),
  ),
);
