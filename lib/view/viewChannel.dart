import 'package:flutter/material.dart';


class ViewChannel extends StatefulWidget {
  final String title;
  const ViewChannel({required this.title});

  @override 
  State<ViewChannel> createState() => _ViewChannelState();
}

class _ViewChannelState extends State<ViewChannel>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Text("ChannelPage"),
        ),
      )
    );
  }
}