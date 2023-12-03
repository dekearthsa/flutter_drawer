import 'package:flutter/material.dart';


class WidgetChannelValue extends StatefulWidget {
  @override
  State<WidgetChannelValue> createState() =>  _WidgetChannelValueState();
}

class _WidgetChannelValueState extends State<WidgetChannelValue>{
  @override
  Widget build(BuildContext context){
    return Container(
      margin: EdgeInsets.only(left: 10, right: 10, top: 10),
      child: GridView.count(
        
        mainAxisSpacing: 10,
        crossAxisSpacing: 30,
        crossAxisCount: 3,
        children: [
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Icon(Icons.air_rounded, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("13.5", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
                ),
              
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Icon(Icons.thermostat_sharp, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("123", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Icon(Icons.filter_tilt_shift_outlined, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("123", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Icon(Icons.heat_pump_outlined, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("123", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Icon(Icons.ac_unit_rounded, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("123", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
                ),
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 25),
                      child: Icon(Icons.hdr_on_select_sharp, color: Color.fromARGB(255, 255, 255, 255),),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text("123", style: TextStyle(color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color.fromARGB(255, 255, 255, 255))
                ),
              ),
            ),
          ],
        ),
    );
  }
}