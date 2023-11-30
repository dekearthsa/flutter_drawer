import 'package:flutter/material.dart';
// import 'package:slider_button/slider_button.dart';
import 'package:slidable_button/slidable_button.dart';

class ViewHomePage extends StatefulWidget {
  final String title;
  const ViewHomePage({required this.title});

  @override
  State<ViewHomePage> createState() => _ViewHomePageState();
}

class _ViewHomePageState extends State<ViewHomePage> {
  bool setInfoWB = false;
  bool setInfoAD = false;
  bool setInfoLFL = false;

  String haddleSystemWB = "ON";
  String haddleAutoWB = "ON";
  String haddleSystemAD = "ON";
  String haddleAutoAD = "ON";

  void _haddleOpenWellBreathBTN(bool status) {
    setState(() {
      if (status == true) {
        setInfoWB = false;
      } else {
        setInfoWB = true;
      }
    });
  }

  void _haddleOpenAlwayDryBTN(bool status) {
    setState(() {
      if (status == true) {
        setInfoAD = false;
      } else {
        setInfoAD = true;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            // title: Text(widget.title),
            ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              // // WellBreath Widget // //
              Center(
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.95,

                  // alignment: Alignment.center,
                  child: Card(
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 15.0, top: 5.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.air,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 25.0,
                                  ),
                                ),
                                Text("WellBreath",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold))
                              ],
                            )),
                        // // Card grid // //
                        SizedBox(
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
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                                            color: Color.fromARGB(
                                                255, 255, 255, 255)),
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
                        ),
                        // // End card grid // //
                        // // Card grid // //
                        SizedBox(
                          width: setInfoWB == true ? 300 : 0,
                          height: setInfoWB == true ? 150 : 0,
                          // child:  WidgetCardWellBreath(),
                          child: setInfoWB == true
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
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                      Text(haddleSystemWB,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                    ],
                                                  ),
                                                ),
                                                onChanged: (position) {
                                                  setState(() {
                                                    if (position ==SlidableButtonPosition.end) {
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
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                      Text(haddleAutoWB,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
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
                        ),
                        // // End card grid // //
                        Container(
                            width: MediaQuery.of(context).size.width * 1,
                            // height: 10,
                            decoration: BoxDecoration(
                                border: Border(
                              top: BorderSide(
                                  width: 1.0,
                                  color: Color.fromARGB(255, 114, 169, 241)),
                            )),
                            // margin: EdgeInsets.only(top: 105),
                            child: IconButton(
                                onPressed: () =>
                                    {_haddleOpenWellBreathBTN(setInfoWB)},
                                icon: Icon(
                                  setInfoWB == true
                                      ? Icons.arrow_drop_up_outlined
                                      : Icons.arrow_drop_down_outlined,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                )))
                      ],
                    )),
                    color: Color.fromARGB(255, 47, 137, 255),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
              // // === end === // //
              // // AD // //
              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 15.0),
                  width: MediaQuery.of(context).size.width * 0.95,
                  // alignment: Alignment.center,
                  child: Card(
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 15.0, top: 5.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.air,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 25.0,
                                  ),
                                ),
                                Text("Alway Dry",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold))
                              ],
                            )),
                        Container(
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
                                              color: Color.fromARGB(
                                                  255, 255, 50, 50)),
                                          Text(
                                            "Dryfan",
                                            style: TextStyle(
                                                color: Color.fromARGB(
                                                    255, 255, 50, 50),
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
                        ),
                        Container(
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
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(children: [
                                  Text(
                                    "11:00 min",
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
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
                        ),
                        SizedBox(
                          width: setInfoAD == true ? 300 : 0,
                          height: setInfoAD == true ? 150 : 0,
                          // child:  WidgetCardWellBreath(),
                          child: setInfoAD == true
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
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                      Text(haddleSystemAD,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                    ],
                                                  ),
                                                ),
                                                onChanged: (position) {
                                                  setState(() {
                                                    if (position ==SlidableButtonPosition.end) {
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
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
                                                                      255,
                                                                      255,
                                                                      255,
                                                                      255))),
                                                      Text(haddleAutoAD,
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color: Color
                                                                  .fromARGB(
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
                                                        SlidableButtonPosition.end) {
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
                                )
                              : null,
                        ),
                        Container(
                            width: MediaQuery.of(context).size.width * 1,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                                        width: 1.0,
                                        color: Color.fromARGB(
                                            255, 250, 213, 146)))),
                            child: IconButton(
                                onPressed: () => {
                                  _haddleOpenAlwayDryBTN(setInfoAD)
                                },
                                icon: Icon(
                                  setInfoAD == true
                                  ? Icons.arrow_drop_up_outlined
                                  :Icons.arrow_drop_down_outlined,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                ))),
                      ],
                    )),
                    color: Color.fromARGB(255, 255, 182, 47),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),

              Center(
                child: Container(
                  margin: EdgeInsets.only(top: 15.0),
                  width: MediaQuery.of(context).size.width * 0.95,
                  // alignment: Alignment.center,
                  child: Card(
                    child: Container(
                        child: Column(
                      children: [
                        Container(
                            alignment: Alignment.topLeft,
                            margin: EdgeInsets.only(left: 15.0, top: 5.0),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(right: 10.0),
                                  child: Icon(
                                    Icons.air,
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    size: 25.0,
                                  ),
                                ),
                                Text("Light for life",
                                    style: const TextStyle(
                                        color:
                                            Color.fromARGB(255, 255, 255, 255),
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold))
                              ],
                            )),
                        Container(
                            width: MediaQuery.of(context).size.width * 1,
                            // height: 15,
                            decoration: BoxDecoration(
                                border: Border(
                                    top: BorderSide(
                              width: 1.0,
                              color: Color.fromARGB(255, 242, 242, 177),
                            ))),
                            // margin: EdgeInsets.only(top: 130),
                            child: IconButton(
                                onPressed: () => {},
                                icon: Icon(
                                  Icons.arrow_drop_down_outlined,
                                  color:
                                      const Color.fromARGB(255, 255, 255, 255),
                                )))
                      ],
                    )),
                    color: Color.fromARGB(255, 223, 223, 41),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
