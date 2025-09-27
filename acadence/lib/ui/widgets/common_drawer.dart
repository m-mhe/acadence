import 'package:acadence/ui/theme/light_theme_colors.dart';
import 'package:flutter/material.dart';

class CommonDrawer extends StatelessWidget {
  const CommonDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(7),
          bottomLeft: Radius.circular(7),
        ),
      ),
      width: MediaQuery.widthOf(context) / 1.5,
      child: SingleChildScrollView(
        child: Column(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: LightThemeColors.accentColor),
              child: Center(
                child: Text(
                  "Acadence",
                  style: TextStyle(
                    color: LightThemeColors.mainColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Dashboard",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Announcements",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Transcript",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Account Summary",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Completed Courses",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Finance",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "Exam Schedule",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.maxFinite,
              height: 50,
              child: InkWell(
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Center(
                    child: Text(
                      "App Theme",
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
