import 'package:flutter/material.dart';


class ViewLoginLogout extends StatefulWidget {
  final String title;
  const ViewLoginLogout({required this.title});

  @override 
  State<ViewLoginLogout> createState() => _ViewLoginLogoutState();
}

class _ViewLoginLogoutState extends State<ViewLoginLogout>{
  @override 
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Text("Login/Logout"),
        ),
      )
    );
  }
}