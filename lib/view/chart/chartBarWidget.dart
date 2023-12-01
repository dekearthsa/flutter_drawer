import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class BarChartData {
  BarChartData(this.x, this.y);
  final String x;
  final double y;
}

class BarChartWidget extends StatelessWidget {
  final List<BarChartData> dataBarChart = [
    BarChartData('Mon', 12.0),
    BarChartData('Thu', 15.0),
    BarChartData('Wen', 15.4),
    BarChartData('Tue', 14.3),
    BarChartData('Fri', 16.0),
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
          title: ChartTitle(text: 'Bar chart'),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <ChartSeries>[
            BarSeries<BarChartData, String>(
                dataSource: dataBarChart,
                xValueMapper: (BarChartData value, _) => value.x,
                yValueMapper: (BarChartData value, _) => value.y,
                dataLabelSettings: DataLabelSettings(isVisible: true),
                width: 0.6,
                spacing: 0.3),
          ]),
    );
  }
}
