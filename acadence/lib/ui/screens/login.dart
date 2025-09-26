import 'package:acadence/ui/screens/dash_board.dart';
import 'package:acadence/ui/theme/light_theme_colors.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final List<String> _roles = ["Student", "Instructor", "Admin"];
  int _currentRole = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                width: double.maxFinite,
                height: MediaQuery.heightOf(context) / 5,
                color: LightThemeColors.accentColor,
              ),
              Expanded(child: Container(color: LightThemeColors.mainColor)),
            ],
          ),
          SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      top: (MediaQuery.heightOf(context) / 10),
                    ),
                    child: Text(
                      "LogIn",
                      style: TextStyle(
                        color: LightThemeColors.mainColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: (MediaQuery.heightOf(context) / 5),
                      left: MediaQuery.sizeOf(context).width / 30,
                      right: MediaQuery.sizeOf(context).width / 30,
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: LightThemeColors.accentColor,
                      decoration: InputDecoration(
                        hintText: "${_roles[_currentRole]} ID:",
                        hintStyle: TextStyle(
                          color: LightThemeColors.deepMainColor,
                        ),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: LightThemeColors.accentColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: LightThemeColors.accentColor,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).width / 30,
                      left: MediaQuery.sizeOf(context).width / 30,
                      right: MediaQuery.sizeOf(context).width / 30,
                    ),
                    child: TextField(
                      style: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontWeight: FontWeight.w500,
                      ),
                      cursorColor: LightThemeColors.accentColor,
                      decoration: InputDecoration(
                        hintText: "Password:",
                        hintStyle: TextStyle(
                          color: LightThemeColors.deepMainColor,
                        ),
                        enabled: true,
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: LightThemeColors.accentColor,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(7),
                          borderSide: BorderSide(
                            color: LightThemeColors.accentColor,
                            width: 1.5,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.only(
                      top: MediaQuery.sizeOf(context).width / 30,
                      left: MediaQuery.sizeOf(context).width / 30,
                      right: MediaQuery.sizeOf(context).width / 30,
                    ),
                    child: DropdownMenu(
                      controller: null,
                      initialSelection: 0,
                      onSelected: (v) {
                        _currentRole = v!;
                        setState(() {});
                      },
                      width: 123,
                      textStyle: TextStyle(
                        color: LightThemeColors.accentColor,
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                      label: Text(
                        'Login as ${_currentRole != 2 ? "a" : "an"}',
                        style: TextStyle(
                          color: LightThemeColors.deepMainColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      dropdownMenuEntries: [
                        DropdownMenuEntry(value: 0, label: "Student"),
                        DropdownMenuEntry(value: 1, label: "Teacher"),
                        DropdownMenuEntry(value: 2, label: "Admin"),
                      ],
                    ),
                  ),
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: MediaQuery.sizeOf(context).width / 30),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) {
                              return DashBoard();
                            },
                          ),
                          (Route<dynamic> route) => false,
                        );//or // Get.offAll(Course(DashBoard());
                      },
                      child: Text(
                        "LogIn",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
