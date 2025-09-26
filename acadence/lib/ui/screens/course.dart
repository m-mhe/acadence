import 'package:acadence/ui/theme/light_theme_colors.dart';
import 'package:acadence/ui/widgets/common_app_bar.dart';
import 'package:acadence/ui/widgets/common_drawer.dart';
import 'package:flutter/material.dart';

class Course extends StatelessWidget {
  const Course({super.key, required this.courseTitle});

  final String courseTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, courseTitle),
      endDrawer: CommonDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width / 30),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                height: 100,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: MediaQuery.sizeOf(context).width / 30,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          courseTitle,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: LightThemeColors.accentColor,
                          ),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Instructor: ",
                            style: TextStyle(
                              color: LightThemeColors.accentColor,
                              fontWeight: FontWeight.w600,
                            ),
                            children: [
                              TextSpan(
                                text: "Professor X",
                                style: TextStyle(
                                  color: LightThemeColors.lightAccentColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: ", Credit: ",
                                style: TextStyle(
                                  color: LightThemeColors.accentColor,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              TextSpan(
                                text: "3",
                                style: TextStyle(
                                  color: LightThemeColors.lightAccentColor,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                width:
                    (MediaQuery.widthOf(context) -
                    (MediaQuery.sizeOf(context).width / 30 * 2)),
                height: 50,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 50,
                        width:
                            ((MediaQuery.widthOf(context) -
                                (MediaQuery.sizeOf(context).width / 30 * 2)) *
                            0.8),
                        child: Card(
                          margin: EdgeInsetsGeometry.all(0),
                          color: LightThemeColors.goldColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                        ),
                      ),
                      Center(
                        child: Text(
                          "Course Progress: 80%",
                          style: TextStyle(
                            color: LightThemeColors.accentColor,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: double.maxFinite,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: Text(
                          "Course Outline",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: LightThemeColors.accentColor,
                          ),
                        ),
                      ),
                      ListView.builder(
                        primary: false,
                        shrinkWrap: true,
                        itemCount: 12,
                          itemBuilder: (BuildContext context, int i){
                        return ListTile(
                          title: Text("Class ${(i+1).toString().padLeft(2, "0")}", style: TextStyle(color: LightThemeColors.accentColor, fontWeight: FontWeight.w600),),
                          subtitle: Text("Topic: Class topic number ${i+1}", style: TextStyle(color: LightThemeColors.accentColor),),
                          trailing: Text(i%2==0?"Present":"Absent", style: TextStyle(color: i%2==0?Colors.green.shade700:Colors.red.shade700, fontWeight: FontWeight.w600),),
                        );
                      })
                    ],
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Evaluate Faculty")),
            ],
          ),
        ),
      ),
    );
  }
}
