import 'package:flutter/material.dart';
import './main.dart';
class ViewLoginLogout extends StatefulWidget {
  final String title;
  const ViewLoginLogout({required this.title});

  @override
  State<ViewLoginLogout> createState() => _ViewLoginLogoutState();
}

class _ViewLoginLogoutState extends State<ViewLoginLogout> {
  String onUsername = "";
  String onPassword = "";
  String onError = "";
  void _haddleLogin() {
    if (onUsername == "Earth" && onPassword == "1234") {
      print(onUsername);
      print(onPassword);
      setState(() {
        onError = "";
      });
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => MyHomePage(title: "Journey Solution"))
        );

    } else {
      setState(() {
        onError = "Invalid username or password";
      });

    }
  }

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
                  initialValue: "test",
                  onChanged: ((value) => setState(() {
                        onUsername = value!;
                      })),
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
                  initialValue: "****",
                  onChanged: ((value) => setState(() {
                        onPassword = value!;
                      })),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Text(
                      onError,
                      style: TextStyle(color: Color.fromARGB(255, 255, 10, 10)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    child: ElevatedButton(
                        onPressed: () {
                          _haddleLogin();
                          
                        },
                        child: Text("LOGIN")),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
