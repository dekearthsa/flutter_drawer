import 'package:flutter/material.dart';
import 'component/compoentCardControl.dart';
import 'component/compoentCardParamterAir.dart';
import 'component/compoentCardOperate.dart';

class ViewWellBreathSetting extends StatefulWidget {
  final String title;
  const ViewWellBreathSetting({required this.title});

  @override
  State<ViewWellBreathSetting> createState() => _ViewWellBreathSettingState();
}

class _ViewWellBreathSettingState extends State<ViewWellBreathSetting> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        Opacity(
          opacity: 0.8,
          child: Container(
            width: 450,
            height: 450,
            child: Row(
              children: [
                WidgetCardController(),
                WidgetCardParameterAir(),
              ],
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30)),
                image: DecorationImage(
                  image: AssetImage("assets/images/bg_image.png"),
                  fit: BoxFit.cover,
                )),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 25, left: 20),
          alignment: Alignment.topLeft,
          child: Text("Operation", style: TextStyle(fontWeight: FontWeight.bold),),
        ), 
        WidgetCardOperate(),
      ],
    ));
  }
}
