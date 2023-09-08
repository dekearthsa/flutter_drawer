import 'package:flutter/material.dart';
import './view/viewChannel.dart';
import './view/viewDashboard.dart';
import './view//viewHome.dart';
import './view//viewLoginLogout.dart';
import './view/viewSetting.dart';
import './view//viewWellBreathSetting.dart';
import './avatar/widgetDrawerHeader.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Journey Solution',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: ' Journey Solution'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget>_pages = [
    ViewHomePage(title: "Home"),
    ViewDashboard(title: "Dashboard"),
    ViewChannel(title: "Channel Setting"),
    ViewWellBreathSetting(title: "WellBreath Setting"),
    ViewSetting(title: "Setting profile"),
    ViewLoginLogout(title: "Login/Logout"),
  ];

  int _pageSelection = 0;
  String _menuSelected = "home";
  Color _selectedMenu = Color.fromARGB(255, 252, 209, 250);
  Icon _selectedIcon = Icon(Icons.home);


  void _haddleSelectionPage(int selector){
    setState(() {
      _pageSelection = selector;
      if(selector == 0){
        _menuSelected = "home";
        _selectedIcon = Icon(Icons.home);
      }else if(selector == 1){
        _menuSelected = "dashboard";
        _selectedIcon = Icon(Icons.dashboard);
      }else if(selector == 2){
        _menuSelected = "channel";
        _selectedIcon = Icon(Icons.route);
      }else if(selector == 3){
        _menuSelected = "wb";
        _selectedIcon = Icon(Icons.thermostat_auto);
      }else if(selector == 4){
        _menuSelected = "setting";
        _selectedIcon = Icon(Icons.settings);
      }else if(selector == 5){
        _menuSelected = "login";
        _selectedIcon = Icon(Icons.exit_to_app_sharp);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: Drawer(
          // shadowColor: null,
          backgroundColor: Color.fromARGB(255, 255, 243, 254),
          width: 250.0,
          child: Column(
            children: [
              SizedBox(
                width: 250.0,
                height: 100.0,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 252, 209, 250),
                  ),
                  child: WidgetDrawerHeader(),
                ),
              ),
              ListTile(
                // tileColor: Color.fromARGB(255, 252, 209, 250),
                tileColor: _menuSelected == 'home'? _selectedMenu: null,
                leading: _menuSelected == 'home'?  _selectedIcon:Icon(Icons.home_outlined),
                title: const Text("Home"),
                onTap: () {
                  _haddleSelectionPage(0);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'dashboard'? _selectedMenu: null,
                leading: _menuSelected == 'dashboard'? _selectedIcon:Icon(Icons.dashboard_outlined),
                title: const Text("Dashboard"),
                onTap: () {
                  _haddleSelectionPage(1);
                },
              ),
              ListTile(
                tileColor:  _menuSelected == 'channel'? _selectedMenu: null,
                leading: _menuSelected == 'channel' ? _selectedIcon : Icon(Icons.route_outlined),
                title: const Text("Channel"),
                onTap: () {
                  _haddleSelectionPage(2);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'wb'? _selectedMenu: null,
                leading: _menuSelected == 'wb'? _selectedIcon : Icon(Icons.thermostat),
                title: const Text("WellBreath"),
                onTap: () {
                  _haddleSelectionPage(3);
                },
              ),
              const Expanded(child: SizedBox()),
              const Divider(height: 1.0, color: Color.fromARGB(255, 194, 194, 194)),
              ListTile(
                tileColor: _menuSelected == 'setting'? _selectedMenu: null,
                leading: _menuSelected == 'setting'? _selectedIcon: Icon(Icons.settings_outlined),
                title: const Text("Setting"),
                onTap: () {
                  _haddleSelectionPage(4);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'login'? _selectedMenu: null,
                leading: _menuSelected == 'login'? _selectedIcon : Icon(Icons.exit_to_app_outlined),
                title: const Text("Logout"),
                onTap: () {
                  _haddleSelectionPage(5);
                },
              )
            ],
          ),
        ),
        body:Container(
          child: _pages[_pageSelection],
        )
      );
  }
}
