import 'package:flutter/material.dart';

class WidgetLightforLifeStatus extends StatefulWidget {
  final bool isActiveLight;
  final int isBattery;
  final String isDeviceID;
  const WidgetLightforLifeStatus(
      {required this.isActiveLight,
      required this.isBattery,
      required this.isDeviceID});
  @override
  State<WidgetLightforLifeStatus> createState() =>
      _WidgetLightforLifeStatusState();
}

class _WidgetLightforLifeStatusState extends State<WidgetLightforLifeStatus> {

  Icon _setBattery(int isBattery) {
    if (isBattery <= 100 && isBattery > 80) {
      return Icon(
        Icons.battery_full_outlined,
        color: Color.fromARGB(255, 0, 127, 34)
        );
    } else if (isBattery <= 80 && isBattery > 60) {
      return Icon(
        Icons.battery_5_bar_outlined,
        color: Color.fromARGB(255, 0, 127, 34)
        );
    } else if (isBattery <= 60 && isBattery > 40) {
      return Icon(
        Icons.battery_3_bar_outlined,
        color: Color.fromARGB(255, 175, 175, 1)
        );        
    } else if (isBattery <= 40 && isBattery > 30) {
      return Icon(
        Icons.battery_2_bar_outlined,
        color: Color.fromARGB(255, 255, 140, 0)
        );
    } else {
      return Icon(
        Icons.battery_1_bar_outlined,
        color: Color.fromARGB(255, 255, 30, 30)
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          margin: EdgeInsets.only(top: 20),
          child: widget.isActiveLight == true
              ? Icon(Icons.lightbulb_circle_outlined)
              : Icon(
                  Icons.lightbulb_circle,
                  color: const Color.fromARGB(255, 255, 255, 255),
                ),
        ),
        Container(
          margin: EdgeInsets.only(top: 20),
          child: Row(
            children: [
              Container(
                child: Text(
                  widget.isDeviceID,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: _setBattery(widget.isBattery)
              )
            ],
          ),
        ),
      ],
    );
  }
}
