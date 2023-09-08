import 'package:flutter/material.dart';


class ViewHomePage extends StatefulWidget {
  final String title;
  const ViewHomePage({required this.title});

  @override 
  State<ViewHomePage> createState() => _ViewHomePageState();
}

class _ViewHomePageState extends State<ViewHomePage>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Text("Homepage"),
        ),
      )
    );
  }
}