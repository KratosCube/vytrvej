import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:vytrvej/utils/constants.dart';

class MoodGraph extends StatefulWidget {
  const MoodGraph({super.key});

  @override
  State<MoodGraph> createState() => _MoodGraphState();
}

class _MoodGraphState extends State<MoodGraph> {
  final List<ChartData> chartData = <ChartData>[
    ChartData(30, 5),
    ChartData(29, 4),
    ChartData(28, 5),
    ChartData(27, 5),
    ChartData(26, 3),
    ChartData(25, 1),
    ChartData(24, 1),
    ChartData(23, 1),
    ChartData(22, 2),
    ChartData(21, 1),
    ChartData(20, 2),
    ChartData(19, 2),
    ChartData(18, 1),
    ChartData(17, 2),
    ChartData(16, 3),
    ChartData(15, 4),
    ChartData(14, 4),
    ChartData(13, 4),
    ChartData(12, 5),
    ChartData(11, 5),
    ChartData(10, 4),
    ChartData(9, 4),
    ChartData(8, 4),
    ChartData(7, 3),
    ChartData(6, 5),
    ChartData(5, 4),
    ChartData(4, 3),
    ChartData(3, 2),
    ChartData(2, 1),
    ChartData(1, 1),
    ChartData(0, 3),
  ];

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
            height: deviceHeight * 0.20,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: SfCartesianChart(
              title: const ChartTitle(
                  text: 'Mood Graph',
                  alignment: ChartAlignment.near,
                  textStyle: TextStyle(fontWeight: FontWeight.bold)),
              plotAreaBorderWidth: 0,
              primaryYAxis: const NumericAxis(
                plotBands: <PlotBand>[
                  PlotBand(
                      start: 0,
                      end: 1,
                      shouldRenderAboveSeries: false,
                      color: Color(0xFFF4F269)),
                  PlotBand(
                      start: 1,
                      end: 2,
                      shouldRenderAboveSeries: false,
                      color: Color(0xffCEE26B)),
                  PlotBand(
                      start: 2,
                      end: 3,
                      shouldRenderAboveSeries: false,
                      color: Color(0xFFA8D26D)),
                  PlotBand(
                      start: 3,
                      end: 4,
                      shouldRenderAboveSeries: false,
                      color: Color(0xff82C26E)),
                  PlotBand(
                      start: 4,
                      end: 5.4,
                      shouldRenderAboveSeries: false,
                      color: Color(0xff5CB270)),
                ],
                majorGridLines: MajorGridLines(width: 0),
                maximum: 5.5,
                interval: 1,
              ),
              primaryXAxis: const NumericAxis(
                majorGridLines: MajorGridLines(width: 0),
                interval: 5,
                isInversed: true,
              ),
              //backgroundColor: Colors.lightBlue[100],
              palette: const <Color>[
                Color(0xff0C63E7),
              ],
              series: <CartesianSeries>[
                SplineSeries<ChartData, int>(
                  dataSource: chartData,
                  cardinalSplineTension: 0.1,
                  xValueMapper: (ChartData data, _) => data.x,
                  yValueMapper: (ChartData data, _) => data.y,
                )
              ],
            )),
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y);
  final int x;
  final double y;
}
