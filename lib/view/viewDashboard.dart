import 'package:flutter/material.dart';
import './chart/chartLineWidget.dart';
import './chart/chartBarWidget.dart';
import './chart/chartPieWidget.dart';

class ViewDashboard extends StatefulWidget {
  final String title;
  const ViewDashboard({required this.title});

  @override 
  State<ViewDashboard> createState() => _ViewDashboardState();
}

class _ViewDashboardState extends State<ViewDashboard>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            LineChartWidget(),
            BarChartWidget(),
            PieChartWidget(),
          ]),
        ),
      )
    );
  }
}