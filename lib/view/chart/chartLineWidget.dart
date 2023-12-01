import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class LineChartData {
  LineChartData(this.x, this.y);
  final String x;
  final double y;
}

class LineChartWidget extends StatelessWidget {
  final List<LineChartData> dataLineChart = [
    LineChartData('day1', 10),
    LineChartData('day2', 20),
    LineChartData('day3', 30),
    LineChartData('day4', 25),
    LineChartData('day5', 30)
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410.0,
      height: 500,
      margin: EdgeInsets.only(bottom: 250.0),
      child: SfCartesianChart(
          primaryXAxis: CategoryAxis(),
          legend: Legend(isVisible: true),
          title: ChartTitle(text: 'Line chart'),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries>[
            LineSeries<LineChartData, String>(
              dataSource: dataLineChart,
              xValueMapper: (LineChartData value, _) => value.x,
              yValueMapper: (LineChartData value, _) => value.y,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ]),
    );
  }
}
