import 'package:flutter/material.dart';

class WidgetCardOperate extends StatefulWidget {
  @override
  State<WidgetCardOperate> createState() => _WidgetCardOperateState();
}

class _WidgetCardOperateState extends State<WidgetCardOperate> {

  bool isActionFirst = false;
  bool isActionSec = false;

  Color setColorFirst = Color.fromARGB(255, 254, 35, 35);
  Color setColorSec = Color.fromARGB(255, 254, 35, 35);

  void haddleBtnFirst(bool isState) {
    if (isState) {
      setState(() {
          isActionFirst = false;
          setColorFirst = Color.fromARGB(255, 254, 35, 35);
      });
      
    } else {
      setState(() {
        isActionFirst = true;
          setColorFirst = Color.fromARGB(255, 30, 198, 0);
      });
      
    }
  }

  void haddleBtnSec(bool isState) {
    if (isState) {
      setState(() {
          isActionSec = false;
          setColorSec = Color.fromARGB(255, 254, 35, 35);
      });
      
    } else {
      setState(() {
        isActionSec = true;
        setColorSec = Color.fromARGB(255, 30, 198, 0);
      });
      
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 300,
      child: Column(
        children: [
          Transform.translate(
              offset: const Offset(-80, 80),
              child: IconButton(
                  onPressed: () => {
                    haddleBtnFirst(isActionFirst),
                  },
                  icon: Icon(
                    Icons.circle,
                    color: setColorFirst,
                  ))),
          Transform.translate(
              offset: const Offset(40, 35),
              child: IconButton(
                  onPressed: () => {
                    haddleBtnSec(isActionSec),
                  },
                  icon: Icon(
                    Icons.circle,
                    color: setColorSec,
                  ))),
        ],
      ),
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/room.png"))),
    );
  }
}
