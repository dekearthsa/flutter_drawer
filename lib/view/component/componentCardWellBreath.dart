import 'package:flutter/material.dart';

class WidgetCardWellBreath extends StatefulWidget {

  @override
  State<WidgetCardWellBreath> createState() => _WidgetCardWellBreathState();
}

class _WidgetCardWellBreathState extends State<WidgetCardWellBreath> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
                      width: 300,
                      height: 100,
                      // child:  WidgetCardWellBreath(),
                      child: GridView.count(
                        crossAxisSpacing: 10.0,
                        crossAxisCount: 3,
                        children: [
                          Card(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "Co2",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Center(
                                    child: Text(
                                      "88",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            color: Color.fromARGB(255, 156, 194, 244),
                          ),
                          Card(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "IAQ",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Center(
                                    child: Text(
                                      "111",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            color: Color.fromARGB(255, 156, 194, 244),
                          ),
                          Card(
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  child: Text(
                                    "PM2.5",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color:
                                            Color.fromARGB(255, 255, 255, 255)),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(top: 15),
                                  child: Center(
                                    child: Text(
                                      "4",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: Color.fromARGB(
                                              255, 255, 255, 255)),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            color: Color.fromARGB(255, 156, 194, 244),
                          ),
                        ],
                      ),
                    );
  }
}