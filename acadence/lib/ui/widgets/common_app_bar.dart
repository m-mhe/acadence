import 'package:flutter/material.dart';

import '../theme/light_theme_colors.dart';

AppBar commonAppBar(BuildContext context, String title){
  return AppBar(
    backgroundColor: LightThemeColors.accentColor,
    foregroundColor: Colors.white,
    title: Text(title, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),

  );
}