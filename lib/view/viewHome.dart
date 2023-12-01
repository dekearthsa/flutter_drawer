import 'package:flutter/material.dart';
import 'component/componentCardWellBreath.dart';
import 'package:slidable_button/slidable_button.dart';
import 'component/componentCardWellBreathOnOff.dart';
import 'component/componentCardAlwayDryActive.dart';
import 'component/componentCardAlwayDryTiming.dart';
import 'component/componentCardAlwayDryOnOff.dart';
import 'component/componentCardLightStatus.dart';

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

  void _haddleOpenLightForLife(bool status) {
    setState(() {
      if (status == true) {
        setInfoLFL = false;
      } else {
        setInfoLFL = true;
      }
    });
  }

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
        body: SingleChildScrollView(
      child: Column(
        children: [
          // // WellBreath Widget // //
          Center(
            child: Container(
              margin: EdgeInsets.only(top: 30),
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
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        )),
                    // // Card grid // //
                    WidgetCardWellBreath(),
                    // // End card grid // //
                    // // Card grid // //
                    WidgetCardWellBreathOnOff(isStatus: setInfoWB),
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
                              color: const Color.fromARGB(255, 255, 255, 255),
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
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        )),
                    WidgetAlwaydryActive(),
                    WidgetAlwaydryTiming(),
                    WidgetAlwayDryOnOff(isStatus: setInfoAD),
                    Container(
                        width: MediaQuery.of(context).size.width * 1,
                        decoration: BoxDecoration(
                            border: Border(
                                top: BorderSide(
                                    width: 1.0,
                                    color:
                                        Color.fromARGB(255, 250, 213, 146)))),
                        child: IconButton(
                            onPressed: () =>
                                {_haddleOpenAlwayDryBTN(setInfoAD)},
                            icon: Icon(
                              setInfoAD == true
                                  ? Icons.arrow_drop_up_outlined
                                  : Icons.arrow_drop_down_outlined,
                              color: const Color.fromARGB(255, 255, 255, 255),
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
          // // LFL // //
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
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.bold))
                          ],
                        )),
                    Container(
                      width: 300,
                      height: 220,
                      child: Card(
                        child: Column(
                          children: [
                            WidgetLightforLifeStatus(isActiveLight: false, isBattery: 100, isDeviceID: "43:B3:34:34:3F",),
                            WidgetLightforLifeStatus(isActiveLight: true, isBattery: 50, isDeviceID: "23:F3:34:44:FF",),
                            WidgetLightforLifeStatus(isActiveLight: false, isBattery: 100, isDeviceID: "34:94:D9:03:23",),
                            WidgetLightforLifeStatus(isActiveLight: true, isBattery: 12, isDeviceID: "3D:9R:32:34:00",),
                          ],
                        ),
                        color: Color.fromARGB(255, 251, 251, 135),
                      ),
                    ),
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
                            onPressed: () =>
                                {_haddleOpenLightForLife(setInfoLFL)},
                            icon: Icon(
                              Icons.arrow_drop_down_outlined,
                              color: const Color.fromARGB(255, 255, 255, 255),
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
          Container(
            margin: EdgeInsets.only(bottom: 30.0),
          )
        ],
      ),
    ));
    // // End LFL // //
  }
}
