import 'package:flutter/material.dart';

class WidgetAlwaydryTiming extends StatefulWidget {

  @override
  State<WidgetAlwaydryTiming> createState() => _WidgetAlwaydryTimingState();
}

class _WidgetAlwaydryTimingState extends State<WidgetAlwaydryTiming> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 100,
      child: Card(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              child: Text(
                "Timing:",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Row(children: [
              Text(
                "11:00 min",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
              Icon(
                Icons.access_time_filled,
                color: Color.fromARGB(255, 255, 255, 255),
              )
            ])
          ],
        ),
        color: Color.fromARGB(255, 255, 202, 103),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0),
        ),
      ),
    );
  }
}
