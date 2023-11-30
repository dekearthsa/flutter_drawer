import 'package:flutter/material.dart';

class WidgetCardWellBreath extends StatefulWidget {

  @override
  State<WidgetCardWellBreath> createState() => _WidgetCardWellBreathState();
}

class _WidgetCardWellBreathState extends State<WidgetCardWellBreath> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisSpacing: 10.0,
      crossAxisCount: 3,
      children: [
        Card(
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "IAQ",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 255, 255, 255)),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Center(
                        child: Text(
                          "111",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 255, 255, 255)),
                            ),
                          ),
                        )
                      ],),
                      color: Color.fromARGB(255, 156, 194, 244),),
          Card(
            child: Text("data"),
            color: Color.fromARGB(255, 156, 194, 244),
            ),
          Card(
            child: Text("data"),
            color: Color.fromARGB(255, 156, 194, 244),
            )
          ],
        );
  }
}