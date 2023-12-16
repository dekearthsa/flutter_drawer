import 'package:flutter/material.dart';

class WidgetCardOperate extends StatefulWidget {
  @override
  State<WidgetCardOperate> createState() => _WidgetCardOperateState();
}

class _WidgetCardOperateState extends State<WidgetCardOperate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Column(
        children: [
          Transform.translate(
            offset: const Offset(-80, 80),
            child: Icon(
              Icons.circle,
              size: 30,
              color: Colors.red[800],
            ),
          ),
          Transform.translate(
            offset: const Offset(40, 50),
            child: Icon(
              Icons.circle,
              size: 30,
              color: Colors.red[800],
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/room.png"))),
    );
  }
}
