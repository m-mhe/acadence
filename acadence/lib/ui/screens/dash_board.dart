import 'package:acadence/ui/screens/course.dart';
import 'package:acadence/ui/theme/light_theme_colors.dart';
import 'package:acadence/ui/widgets/common_app_bar.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/common_drawer.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({super.key});

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppBar(context, "Dashboard"),
      endDrawer: CommonDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MediaQuery.sizeOf(context).width / 30),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      CircleAvatar(
                        backgroundColor: LightThemeColors.lightAccentColor,
                        radius: MediaQuery.sizeOf(context).width / 5.5,
                      ),
                      CircleAvatar(
                        backgroundImage: AssetImage("images/demo/profile.jpg"),
                        radius: MediaQuery.sizeOf(context).width / 6,
                      ),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: (MediaQuery.sizeOf(context).width / 6),
                        width:
                            MediaQuery.sizeOf(context).width -
                            ((((MediaQuery.sizeOf(context).width / 5.5) * 2) +
                                    (MediaQuery.sizeOf(context).width /
                                        30 *
                                        2)) +
                                10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              "CGPA: 3.81",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: LightThemeColors.accentColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: (MediaQuery.sizeOf(context).width / 6),
                        width:
                            MediaQuery.sizeOf(context).width -
                            ((((MediaQuery.sizeOf(context).width / 5.5) * 2) +
                                    (MediaQuery.sizeOf(context).width /
                                        30 *
                                        2)) +
                                10),
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(3),
                          ),
                          child: Center(
                            child: Text(
                              "Total Credit: 83",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                color: LightThemeColors.accentColor,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.sizeOf(context).width / 2,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(5),
                          child: Text(
                            "CGPA Graph (last 5 semester)",
                            style: TextStyle(
                              color: LightThemeColors.accentColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal:
                                  (MediaQuery.sizeOf(context).width / 25),
                              vertical: 5,
                            ),
                            child: LineChart(
                              LineChartData(
                                gridData: FlGridData(
                                  horizontalInterval: 1,
                                  verticalInterval: 0.5,
                                  getDrawingHorizontalLine: (value) {
                                    return FlLine(
                                      color: LightThemeColors.lightAccentColor
                                          .withAlpha(70),
                                      strokeWidth: 1,
                                      dashArray: [5, 5, 10],
                                    );
                                  },
                                  getDrawingVerticalLine: (value) {
                                    return FlLine(
                                      color: LightThemeColors.lightAccentColor
                                          .withAlpha(70),
                                      strokeWidth: 1,
                                      dashArray: [5, 5, 10],
                                    );
                                  },
                                ),
                                borderData: FlBorderData(show: false),
                                minX: 1,
                                minY: 0,
                                maxX: 5,
                                maxY: 5,
                                titlesData: FlTitlesData(
                                  leftTitles: AxisTitles(axisNameWidget: null),
                                  rightTitles: AxisTitles(axisNameWidget: null),
                                  topTitles: AxisTitles(axisNameWidget: null),
                                  bottomTitles: AxisTitles(
                                    sideTitles: SideTitles(
                                      showTitles: true,
                                      getTitlesWidget:
                                          (
                                            double semesterNumber,
                                            TitleMeta titleMeta,
                                          ) {
                                            return Padding(
                                              padding: const EdgeInsets.all(3),
                                              child: Text(
                                                (semesterNumber)
                                                    .toStringAsFixed(0),
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  color: LightThemeColors
                                                      .accentColor,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            );
                                          },
                                      interval: 1,
                                    ),
                                  ),
                                ),
                                lineBarsData: [
                                  LineChartBarData(
                                    color: LightThemeColors.accentColor,
                                    belowBarData: BarAreaData(
                                      gradient: LinearGradient(
                                        begin: Alignment.topCenter,
                                        end: Alignment.bottomCenter,
                                        stops: [0.0, 0.25, 0.5, 0.75, 1.0],
                                        colors: [
                                          LightThemeColors.lightAccentColor
                                              .withAlpha(250),
                                          LightThemeColors.lightAccentColor
                                              .withAlpha(190),
                                          LightThemeColors.lightAccentColor
                                              .withAlpha(130),
                                          LightThemeColors.lightAccentColor
                                              .withAlpha(70),
                                          LightThemeColors.lightAccentColor
                                              .withAlpha(10),
                                        ],
                                      ),
                                      show: true,
                                    ),
                                    spots: [
                                      FlSpot(1, 2),
                                      FlSpot(2, 1.3),
                                      FlSpot(3, 2.4),
                                      FlSpot(4, 2.7),
                                      FlSpot(5, 3.5),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: SizedBox(
                  width: double.maxFinite,
                  height: MediaQuery.heightOf(context) / 1.5,
                  child: Card(
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            "Current courses & attendance",
                            style: TextStyle(
                              color: LightThemeColors.accentColor,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.maxFinite,
                          height: (MediaQuery.heightOf(context) / 2) / 2,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: SizedBox(
                                  width: (MediaQuery.heightOf(context) / 2) / 2.5,
                                  height: (MediaQuery.heightOf(context) / 2) / 2.5,
                                  child: PieChart(
                                    PieChartData(
                                      //centerSpaceRadius: 30,
                                      sections: [
                                        PieChartSectionData(
                                          value: (10 / 12) * 100,
                                          title:
                                              "${((10 / 12) * 100).toStringAsFixed(0)}%",
                                          color: LightThemeColors.skyBlueColor,
                                          titleStyle: TextStyle(
                                            color: LightThemeColors.mainColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        PieChartSectionData(
                                          showTitle: false,
                                          value: (2 / 12) * 100,
                                          color: LightThemeColors.skyBlueColor
                                              .withAlpha(100),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: ColoredBox(
                                            color:
                                                LightThemeColors.skyBlueColor,
                                          ),
                                        ),
                                        Text(
                                          " P = 83%",
                                          style: TextStyle(
                                            color: LightThemeColors.accentColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SizedBox(
                                          height: 10,
                                          width: 10,
                                          child: ColoredBox(
                                            color: LightThemeColors.skyBlueColor
                                                .withAlpha(100),
                                          ),
                                        ),
                                        Text(
                                          " A = 17%",
                                          style: TextStyle(
                                            color: LightThemeColors.accentColor,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: ListView.builder(
                            itemCount: 8,
                            itemBuilder: (BuildContext context, int i) {
                              return InkWell(
                                onTap: (){
                                  Get.to(Course(courseTitle: "Course ${i+1}"));
                                },
                                child: ListTile(
                                  title: Text("Course ${i+1}", style: TextStyle(color: LightThemeColors.accentColor, fontWeight: FontWeight.w500),),
                                  subtitle: Text("Present: 83%, Absent: 17%", style: TextStyle(color: LightThemeColors.accentColor.withAlpha(150)),),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
