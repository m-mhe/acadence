import 'package:acadence/ui/screens/login.dart';
import 'package:acadence/ui/theme/light_theme_colors.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Acadence",
      home: Login(),
      theme: ThemeData(
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            fixedSize: Size(double.maxFinite, 0),
            backgroundColor: LightThemeColors.accentColor,
            foregroundColor: LightThemeColors.mainColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7))
          )
        ),
        inputDecorationTheme: InputDecorationTheme(
          contentPadding: EdgeInsets.all(5),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
