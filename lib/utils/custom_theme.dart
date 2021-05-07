import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  bool _isLighTheme = true;

  static ThemeData get light => ThemeData.light().copyWith(
      appBarTheme: ThemeData().appBarTheme.copyWith(
          backgroundColor: Colors.white,
          iconTheme: IconThemeData().copyWith(color: Colors.black),
          titleTextStyle: GoogleFonts.pacifico(
            textStyle: TextStyle(color: Colors.black),
          ),
        elevation: 0,
      ),
      textTheme: TextTheme().copyWith(
        caption: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.grey, fontSize: 12),
        headline6: TextStyle(color: Colors.black)
      )
  );

  static ThemeData get dark => ThemeData.dark().copyWith();

  void changeTheme() {
    _isLighTheme = !_isLighTheme;
    notifyListeners();
  }

  ThemeMode getTheme() {
    // if(_isLighTheme){
    //   return light;
    // }else{
    //   return dark;
    // }
    return _isLighTheme ? ThemeMode.light : ThemeMode.dark;
  }
}
