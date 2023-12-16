import 'package:flutter/material.dart';


class WidgetCardParameterAir extends StatefulWidget {
  @override
  State<WidgetCardParameterAir> createState() => _WidgetCardParameterAirState();
}

class _WidgetCardParameterAirState extends State<WidgetCardParameterAir>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(top: 25, bottom: 25),
            child: Column(
              children: [
                Container(
                  child: Icon(Icons.thermostat_sharp, color: Color.fromARGB(255, 255, 255,255), size: 35),
                ),
                Container(
                  child: Text("25.5", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35, bottom: 35),
            child: Column(
              children: [
                Container(
                  child: Icon(Icons.co2, color: Color.fromARGB(255, 255, 255,255), size: 35,),
                ),
                Container(
                  child: Text("400", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 35, bottom: 35),
            child: Column(
              children: [
                Container(
                  child: Icon(Icons.air, color: Color.fromARGB(255, 255, 255,255),size: 35,),
                ),
                Container(
                  child: Text("25.5", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold),),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}