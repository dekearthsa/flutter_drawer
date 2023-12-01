import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

class WidgetCardWellBreathOnOff extends StatefulWidget {
  final bool isStatus;
  const WidgetCardWellBreathOnOff({required this.isStatus});
  @override
  State<WidgetCardWellBreathOnOff> createState() => _WidgetCardWellBreathOnOffState();
}

class _WidgetCardWellBreathOnOffState extends State<WidgetCardWellBreathOnOff> {

  String haddleSystemWB = "ON";
  String haddleAutoWB = "ON";

  @override
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      width: widget.isStatus == true ? 300 : 0,
                      height: widget.isStatus == true ? 150 : 0,
                      // child:  WidgetCardWellBreath(),
                      child: widget.isStatus == true
                          ? GridView.count(
                              crossAxisSpacing: 5.0,
                              crossAxisCount: 2,
                              children: [
                                Card(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 15),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "SYSTEM",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 25),
                                        child: Center(
                                          child: HorizontalSlidableButton(
                                            width: 80,
                                            buttonWidth: 40.0,
                                            color: Theme.of(context)
                                                .cardColor
                                                .withOpacity(0.65),
                                            buttonColor: Color.fromARGB(
                                                255, 104, 104, 104),
                                            dismissible: false,
                                            // label: Center(child: ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(haddleSystemWB,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255))),
                                                  Text(haddleSystemWB,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255))),
                                                ],
                                              ),
                                            ),
                                            onChanged: (position) {
                                              setState(() {
                                                if (position ==
                                                    SlidableButtonPosition
                                                        .end) {
                                                  haddleSystemWB = 'OFF';
                                                } else {
                                                  haddleSystemWB = 'ON';
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  color: haddleSystemWB == "ON"
                                      ? Color.fromARGB(255, 114, 169, 241)
                                      : Color.fromARGB(255, 121, 121, 121),
                                ),
                                Card(
                                  child: Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 15),
                                        alignment: Alignment.center,
                                        child: Text(
                                          "AUTO MODE",
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 25),
                                        child: Center(
                                          child: HorizontalSlidableButton(
                                            width: 80,
                                            buttonWidth: 40.0,
                                            color: Theme.of(context)
                                                .cardColor
                                                .withOpacity(0.65),
                                            buttonColor: Color.fromARGB(
                                                255, 104, 104, 104),
                                            dismissible: false,
                                            // label: Center(child: ),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.all(8.0),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(haddleAutoWB,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255))),
                                                  Text(haddleAutoWB,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255))),
                                                ],
                                              ),
                                            ),
                                            onChanged: (position) {
                                              setState(() {
                                                if (position ==
                                                    SlidableButtonPosition
                                                        .end) {
                                                  haddleAutoWB = 'OFF';
                                                } else {
                                                  haddleAutoWB = 'ON';
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  color: haddleAutoWB == "ON"
                                      ? Color.fromARGB(255, 114, 169, 241)
                                      : Color.fromARGB(255, 121, 121, 121),
                                ),
                              ],
                            )
                          : null,
                    );
  }
}