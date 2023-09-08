import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
// import 'package:file_selector/file_selector.dart';

class WidgetDrawerHeader extends StatefulWidget {
  @override
  State<WidgetDrawerHeader> createState() => _WidgetDrawerHeaderState();
}

class _WidgetDrawerHeaderState extends State<WidgetDrawerHeader>{
  ImagePicker picker = ImagePicker();
  XFile? image;


  Future _getFromGallery() async {
    final image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      final imageTemp = XFile(image.path);
      setState(() {
        this.image = imageTemp;
      });
    }
  }

  @override
  Widget build(BuildContext context){
    return Container(
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: ElevatedButton(

              style: ElevatedButton.styleFrom(
                shadowColor: Colors.transparent,
                // shadowColor: null,
                shape: CircleBorder(),
                padding: EdgeInsets.all(24),
              ),
              onPressed: (() => {
                _getFromGallery()
              }),

              child: image == null ? 
              Container(
                width: 25.0,
                height: 25.0,
                child:  Icon(Icons.person, color: Colors.blueGrey[500],),
              )
                : Image.file(
                  File(image!.path),
                  width: 25.0,
                  height: 25.0,
                )
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: Text("Firstname LastName", style: TextStyle(fontSize: 12.0,fontWeight: FontWeight.bold, color: Colors.grey[600])),
              )
            ],
          )
        ]),
    );
  }
}