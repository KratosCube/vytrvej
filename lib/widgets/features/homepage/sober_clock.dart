import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:vytrvej/utils/constants.dart';

class SoberClock extends StatelessWidget {
  SoberClock({super.key});

  final int _days = 48;

  final int _hours = 3;

  final int _minutes = 55;

  final int _seconds = 23;

  String dateTimeString = "2024-04-13 12:00:00";
  final List<ChartData> chartDaysData = [
    ChartData(6, const Color.fromARGB(255, 56, 27, 159)),
  ];

  final List<ChartData> chartHoursData = [
    ChartData(23, Colors.green),
  ];

  final List<ChartData> chartMinData = [
    ChartData(16, Colors.red),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      surfaceTintColor: Colors.white,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(8, 0, 8, 16),
        child: Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            const Positioned(
              left: 0,
              child: Text('Sober Clock', style: TextStyle(fontSize: 20))),
              const Positioned(
              left: 0,
              top: 40,
              child: Text('5 Days', style: TextStyle(fontSize: 20))),
              const Positioned(
              left: 0,
              top: 75,
              child: Text('18h', style: TextStyle(fontSize: 18))),
            const Positioned(
              left: 0,
              top: 110,
              child: Text('35min', style: TextStyle(fontSize: 15))),
            Positioned(
              top: 15,
              right: 0,
              child: Container(
                alignment: Alignment.bottomLeft,
                width: 100,
                height: 100,
                child: SfCircularChart(series: <RadialBarSeries>[
                  RadialBarSeries<ChartData, String>(
                    gap: "1%",
                    radius: '100%',
                    maximumValue: 60,
                    useSeriesColor: true,
                    trackOpacity: 0.5,
                    cornerStyle: CornerStyle.bothCurve,
                    dataSource: chartMinData,
                    pointColorMapper: (ChartData data, _) => data.color,
                    xValueMapper: (ChartData sales, _) => " ${sales.y} Days",
                    yValueMapper: (ChartData sales, _) => sales.y,
                  )
                ]),
              ),
            ),
            Positioned(
              top: 65,
              child: SizedBox(
                width: 80,
                height: 80,
                child: SfCircularChart(series: <RadialBarSeries>[
                  RadialBarSeries<ChartData, String>(
                    gap: "5%",
                    radius: '100%',
                    maximumValue: 24,
                    useSeriesColor: true,
                    trackOpacity: 0.5,
                    cornerStyle: CornerStyle.bothCurve,
                    dataSource: chartHoursData,
                    pointColorMapper: (ChartData data, _) => data.color,
                    xValueMapper: (ChartData sales, _) => " ${sales.y} h",
                    yValueMapper: (ChartData sales, _) => sales.y,
                  )
                ]),
              ),
            ),
            Positioned(
              top: 85,
              right: 35,
              child: SizedBox(
                width: 70,
                height: 70,
                child: SfCircularChart(
                  series: <RadialBarSeries>[
                    RadialBarSeries<ChartData, String>(
                      gap: "1%",
                      radius: '100%',
                      maximumValue: 31,
                      useSeriesColor: true,
                      trackOpacity: 0.5,
                      cornerStyle: CornerStyle.bothCurve,
                      dataSource: chartDaysData,
                      pointColorMapper: (ChartData data, _) => data.color,
                      xValueMapper: (ChartData sales, _) =>
                          " ${sales.y} min",
                      yValueMapper: (ChartData sales, _) => sales.y,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChartData {
  ChartData(this.y, this.color);
  final int y;
  final Color color;
}
