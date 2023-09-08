import 'package:flutter/material.dart';


class ViewWellBreathSetting extends StatefulWidget {
  final String title;
  const ViewWellBreathSetting({required this.title});

  @override 
  State<ViewWellBreathSetting> createState() => _ViewWellBreathSettingState();
}

class _ViewWellBreathSettingState extends State<ViewWellBreathSetting>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Text("SettingPage"),
        ),
      )
    );
  }
}