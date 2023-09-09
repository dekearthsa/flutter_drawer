import 'dart:io';

import 'package:flutter/material.dart';
// import '../view/viewSetting.dart';
// import '../main.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:file_selector/file_selector.dart';

class WidgetDrawerHeader extends StatefulWidget {
  @override
  State<WidgetDrawerHeader> createState() => _WidgetDrawerHeaderState();
}

class _WidgetDrawerHeaderState extends State<WidgetDrawerHeader> {
  // ImagePicker picker = ImagePicker();
  // XFile? image;

  // Future _getFromGallery() async {
  //   final image = await picker.pickImage(source: ImageSource.gallery);
  //   if (image != null) {
  //     final imageTemp = XFile(image.path);
  //     setState(() {
  //       this.image = imageTemp;
  //     });
  //   }
  // }
  // void _haddleSetting() {
  //   ViewSetting(title: "Setting");
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      // decoration: BoxDecoration(border:Border.all(color: Colors.blueAccent) ),
      child: Row(
          children: [
            Container(
              width: 65.0,
              height: 65.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 255, 255, 255),
                // border:Border.all(color: Colors.blueAccent) 
                ),
              margin: EdgeInsets.only(right: 20.0,),
              // child: const Icon(Icons.person, color: Color.fromARGB(255, 68, 68, 68),size: 30.0,),
              child: const CircleAvatar(
                backgroundImage: const AssetImage('assets/images/pie.png'),
                radius: 220,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  // margin: const EdgeInsets.only( right: 15.0),
                  child: Text("Firstname",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600])),
                ),
                Container(
                  // margin: const EdgeInsets.only( right: 15.0),
                  child: Text("Lastname",
                      style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[600])),
                )
              ],
            )
          ]),
    );
  }
}
