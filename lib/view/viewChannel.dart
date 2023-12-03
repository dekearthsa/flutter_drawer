import 'package:flutter/material.dart';
import './component/componentChannelValue.dart';

class ViewChannel extends StatefulWidget {
  final String title;
  const ViewChannel({required this.title});
  @override
  State<ViewChannel> createState() => _ViewChannelState();
}

class _ViewChannelState extends State<ViewChannel> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: WidgetChannelValue(),
          height: 350,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40.0),
                  bottomRight: Radius.circular(40.0)),
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.2,
                    0.4,
                    0.45
                  ],
                  colors: [
                    Color.fromARGB(255, 209, 222, 250),
                    Color.fromARGB(255, 184, 214, 251),
                    Color.fromARGB(255, 151, 188, 247),
                    Color.fromARGB(255, 136, 179, 247),
                  ])),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(0, -80),
              child: Container(
                height: 150,
                width: 130,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "ALWAYDRY",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Text(
                        "ONLINE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.wifi),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 104, 104, 104)
                            .withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      )
                    ]),
              ),
            ),
            Container(
                child: Transform.translate(
              offset: Offset(0, -80),
              child: Container(
                height: 150,
                width: 130,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Text(
                        "WELLBREATH",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 35),
                      child: Text(
                        "ONLINE",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      child: Icon(Icons.wifi),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        bottomLeft: Radius.circular(40)),
                    color: Color.fromARGB(255, 255, 255, 255),
                    boxShadow: [
                      BoxShadow(
                        color: const Color.fromARGB(255, 104, 104, 104)
                            .withOpacity(0.2),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 2),
                      )
                    ]),
              ),
            ))
          ],
        ),
        Container(
          height: 250,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 45),
                      child: Text(
                        "CHANNEL DETAIL",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 172, 172, 172))),
                      ),
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Icon(Icons.swap_vert_circle_rounded)),
                              Container(
                                child: Text("Relay 1 Channel 1"),
                              )
                            ],
                          ),
                          Container(
                            child: Text("Dry fan"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 172, 172, 172))),
                      ),
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Icon(Icons.swap_vert_circle_rounded)),
                              Container(
                                child: Text("Relay 1 Channel 2"),
                              )
                            ],
                          ),
                          Container(
                            child: Text("Exhaust fan"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 172, 172, 172))),
                      ),
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Icon(Icons.swap_vert_circle_rounded)),
                              Container(
                                child: Text("Relay 2 Channel 1"),
                              )
                            ],
                          ),
                          Container(
                            child: Text("Exhaust fan"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 172, 172, 172))),
                      ),
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Icon(Icons.swap_vert_circle_rounded)),
                              Container(
                                child: Text("Relay 2 Channel 2"),
                              )
                            ],
                          ),
                          Container(
                            child: Text("Supply fan low"),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 0.85,
                      decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                                width: 1,
                                color: Color.fromARGB(255, 172, 172, 172))),
                      ),
                      margin: EdgeInsets.only(top: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                  child: Icon(Icons.swap_vert_circle_rounded)),
                              Container(
                                child: Text("Relay 2 Channel 3"),
                              )
                            ],
                          ),
                          Container(
                            child: Text("Supply fan high"),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
