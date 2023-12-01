import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

class WidgetLightForLifeOnOff extends StatefulWidget {
  final bool isStatus;
  const WidgetLightForLifeOnOff({required this.isStatus});
  @override
  State<WidgetLightForLifeOnOff> createState() =>
      _WidgetLightForLifeOnOffState();
}

class _WidgetLightForLifeOnOffState extends State<WidgetLightForLifeOnOff> {
  String haddleLFL = "ON";

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.isStatus == true ? 300 : 0,
      height: widget.isStatus == true ? 100 : 0,
      child: widget.isStatus == true
          ? Card(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                      child: Row(
                    children: [
                      Container(
                        child: Icon(Icons.power_settings_new_outlined),
                      ),
                      Container(
                        child: Container(
                          child: Text(
                            "ON/OFF",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  )),
                  Container(
                    child: HorizontalSlidableButton(
                      width: 80,
                      buttonWidth: 40.0,
                      color: Theme.of(context).cardColor.withOpacity(0.65),
                      buttonColor: Color.fromARGB(255, 104, 104, 104),
                      dismissible: false,
                      // label: Center(child: ),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(haddleLFL,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                            Text(haddleLFL,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 255, 255, 255))),
                          ],
                        ),
                      ),
                      onChanged: (position) {
                        setState(() {
                          if (position == SlidableButtonPosition.end) {
                            haddleLFL = 'OFF';
                          } else {
                            haddleLFL = 'ON';
                          }
                        });
                      },
                    ),
                  ),
                ],
              ),
              color: haddleLFL == "ON"
                  ? Color.fromARGB(255, 251, 251, 135)
                  : Color.fromARGB(255, 121, 121, 121),
            )
          : null,
    );
  }
}
