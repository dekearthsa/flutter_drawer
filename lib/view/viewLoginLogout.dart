import 'package:flutter/material.dart';

class ViewLoginLogout extends StatefulWidget {
  final String title;
  const ViewLoginLogout({required this.title});

  @override
  State<ViewLoginLogout> createState() => _ViewLoginLogoutState();
}

class _ViewLoginLogoutState extends State<ViewLoginLogout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Username"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                width: 300,
                child: TextFormField(
                  decoration: InputDecoration(labelText: "Password"),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                child: ElevatedButton(
                  onPressed: () {}, child: Text("LOGIN")),
              )
            ],
          )
        ],
      ),
    );
  }
}
