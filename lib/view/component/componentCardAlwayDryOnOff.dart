import 'package:flutter/material.dart';
import 'package:slidable_button/slidable_button.dart';

class WidgetAlwayDryOnOff extends StatefulWidget {
  final bool isStatus;
  const WidgetAlwayDryOnOff({required this.isStatus});
  @override 
  State<WidgetAlwayDryOnOff>createState() => _WidgetAlwayDryOnOffState();
}

class _WidgetAlwayDryOnOffState extends State<WidgetAlwayDryOnOff> {



    String haddleSystemAD = "ON";
    String haddleAutoAD = "ON";

  @override
  Widget build(BuildContext context){
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
                                                  Text(haddleSystemAD,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255))),
                                                  Text(haddleSystemAD,
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
                                                  haddleSystemAD = 'OFF';
                                                } else {
                                                  haddleSystemAD = 'ON';
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  color: haddleSystemAD == "ON"
                                      ? Color.fromARGB(255, 255, 202, 103)
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
                                                  Text(haddleAutoAD,
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Color.fromARGB(
                                                              255,
                                                              255,
                                                              255,
                                                              255))),
                                                  Text(haddleAutoAD,
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
                                                  haddleAutoAD = 'OFF';
                                                } else {
                                                  haddleAutoAD = 'ON';
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  color: haddleAutoAD == "ON"
                                      ? Color.fromARGB(255, 255, 202, 103)
                                      : Color.fromARGB(255, 121, 121, 121),
                                ),
                              ],
                            ): null,
                    );
  }
}