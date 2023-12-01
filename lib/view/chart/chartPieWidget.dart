import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class PieChartData {
  PieChartData(this.x, this.y, this.z);
  final String x;
  final double y;
  final String z;
}

class PieChartWidget extends StatelessWidget {
  final List<PieChartData> dataPieChart = [
    PieChartData('A', 10, '10%'),
    PieChartData('B', 20, '20%'),
    PieChartData('C', 30, '30%'),
    PieChartData('D', 20, '20%'),
    PieChartData('E', 20, '20%')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 410.0,
      height: 500,
      margin: EdgeInsets.only(bottom: 250.0),
      child: SfCircularChart(
          legend: Legend(isVisible: true),
          title: ChartTitle(text: 'Pie chart'),
          tooltipBehavior: TooltipBehavior(enable: true),
          series: <CircularSeries>[
            PieSeries<PieChartData, String>(
              dataSource: dataPieChart,
              xValueMapper: (PieChartData value, _) => value.x,
              yValueMapper: (PieChartData value, _) => value.y,

              explode: true,
              explodeIndex: 2,
              dataLabelSettings: DataLabelSettings(isVisible: true),
            ),
          ]),
    );
  }
}
