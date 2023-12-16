import 'package:flutter/material.dart';

class WidgetCardController extends StatefulWidget {
  @override
  State<WidgetCardController> createState() => _WidgetCardControllerState();
}

class _WidgetCardControllerState extends State<WidgetCardController> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.translate(
          offset: Offset(-75, -30),
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text("CONTROL PANEL", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
          )
        ),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 15, bottom: 5, right: 5),
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(100, 255, 255, 255)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.light,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text("Lamp",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 5),
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(100, 255, 255, 255)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.door_back_door,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text("Door",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            )
          ],
        )),
        Container(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 15, bottom: 5, right: 5),
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(100, 255, 255, 255)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.multitrack_audio_rounded,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text("Air condition",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 5, left: 5, bottom: 5, right: 5),
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(100, 255, 255, 255)),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10.0, top: 10.0),
                    alignment: Alignment.topLeft,
                    child: Icon(
                      Icons.air_outlined,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.topLeft,
                    child: Text("Air purifier",
                        style: TextStyle(
                            fontSize: 15,
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontWeight: FontWeight.bold)),
                  ),
                ],
              ),
            )
          ],
        ))
      ],
    );
  }
}
