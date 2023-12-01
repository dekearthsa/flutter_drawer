import 'package:flutter/material.dart';

class WidgetAlwaydryActive extends StatefulWidget {
  @override
  State<WidgetAlwaydryActive> createState() => _WidgetAlwaydryActiveState();
}

class _WidgetAlwaydryActiveState extends State<WidgetAlwaydryActive> {
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
                "Active:",
                style: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Icon(Icons.wind_power,
                          color: Color.fromARGB(255, 255, 50, 50)),
                      Text(
                        "Dryfan",
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 50, 50),
                            fontWeight: FontWeight.bold),
                      )
                    ],
                  )
                ],
              ),
            )
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
