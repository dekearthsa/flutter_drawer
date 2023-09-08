import 'package:flutter/material.dart';


class ViewSetting extends StatefulWidget {
  final String title;
  const ViewSetting({required this.title});

  @override 
  State<ViewSetting> createState() => _ViewSettingState();
}

class _ViewSettingState extends State<ViewSetting>{
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