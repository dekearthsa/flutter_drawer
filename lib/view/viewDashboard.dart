import 'package:flutter/material.dart';


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
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Text("DashboardPage"),
        ),
      )
    );
  }
}