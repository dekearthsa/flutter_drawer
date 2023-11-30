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
        colorScheme: ColorScheme.fromSeed(seedColor:  Color.fromARGB(255, 58, 125, 183)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Journey Solution'),
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
  final List<Widget> _pages = [
    const ViewHomePage(title: "Home"),
    const ViewDashboard(title: "Dashboard"),
    const ViewChannel(title: "Channel Setting"),
    const ViewWellBreathSetting(title: "WellBreath Setting"),
    const ViewSetting(title: "Setting profile"),
    const ViewLoginLogout(title: "Login/Logout"),
  ];

  int r = 0;
  String _menuSelected = "home";
  Color _selectedMenu = Color.fromARGB(255, 209, 239, 252);
  Icon _selectedIcon = const Icon(Icons.home,color: Color.fromARGB(255, 0, 145, 255));

  void _haddleSelectionPage(int selector) {
    setState(() {
      r = selector;
      if (selector == 0) {
        _menuSelected = "home";
        _selectedIcon = const Icon(Icons.home, color: Color.fromARGB(255, 0, 145, 255));
      } else if (selector == 1) {
        _menuSelected = "dashboard";
        _selectedIcon = const Icon(Icons.dashboard, color: Color.fromARGB(255, 0, 145, 255));
      } else if (selector == 2) {
        _menuSelected = "channel";
        _selectedIcon = const Icon(Icons.route, color: Color.fromARGB(255, 0, 145, 255));
      } else if (selector == 3) {
        _menuSelected = "wb";
        _selectedIcon = const Icon(Icons.thermostat_auto, color: Color.fromARGB(255, 0, 145, 255));
      } else if (selector == 4) {
        _menuSelected = "setting";
        _selectedIcon = const Icon(Icons.settings, color: Color.fromARGB(255, 0, 145, 255));
      } else if (selector == 5) {
        _menuSelected = "login";
        _selectedIcon = const Icon(Icons.exit_to_app_sharp, color: Color.fromARGB(255, 0, 145, 255));
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
          backgroundColor: Color.fromARGB(255, 183, 226, 255),
          width:  250.0,
          child: Column(
            children: [
              InkWell(
                onTap: (() => {
                  _haddleSelectionPage(4)
                }),
                // width:  350.0,
                // height: 200.0,
                // decoration: BoxDecoration(
                //   border:Border.all(color: Colors.blueAccent) 
                // ),
                child:  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 80, 130, 215),
                    ),
                    child: WidgetDrawerHeader(),
                    // child:ElevatedButton(
                    //   style: ElevatedButton.styleFrom(
                    //     splashFactory: NoSplash.splashFactory,
                    //     backgroundColor: const Color.fromARGB(255, 252, 209, 250),
                    //     elevation: 0,
                    //   ),
                    //   child: WidgetDrawerHeader(),
                    //   onPressed: () => {
                    //     _haddleSelectionPage(4)
                    //   },
                    // )
                  ),
              ),
              ListTile(
                // tileColor: Color.fromARGB(255, 252, 209, 250),
                tileColor: _menuSelected == 'home' ? _selectedMenu : null,
                leading: _menuSelected == 'home'
                    ? _selectedIcon
                    : const Icon(Icons.home_outlined),
                title: _menuSelected == 'home'? const Text("Home", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 145, 255)),) :const Text("Home"),
                onTap: () {
                  _haddleSelectionPage(0);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'dashboard' ? _selectedMenu : null,
                leading: _menuSelected == 'dashboard'
                    ? _selectedIcon
                    : const Icon(Icons.dashboard_outlined),
                title: _menuSelected == 'dashboard'? const Text("Dashboard", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 145, 255)),) :const Text("Dashboard"),
                onTap: () {
                  _haddleSelectionPage(1);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'channel' ? _selectedMenu : null,
                leading: _menuSelected == 'channel'
                    ? _selectedIcon
                    : const Icon(Icons.route_outlined),
                title: _menuSelected == 'channel'? const Text("Channel", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 145, 255)),) :const Text("Channel"),
                onTap: () {
                  _haddleSelectionPage(2);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'wb' ? _selectedMenu : null,
                leading: _menuSelected == 'wb'
                    ? _selectedIcon
                    : const Icon(Icons.thermostat),
                title: _menuSelected == 'wb'? const Text("Wellbreath", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 145, 255)),) :const Text("Wellbreath"),
                onTap: () {
                  _haddleSelectionPage(3);
                },
              ),
              const Expanded(child: SizedBox()),
              const Divider(
                  height: 1.0, color: Color.fromARGB(255, 255, 255, 255)),
              ListTile(
                tileColor: _menuSelected == 'setting' ? _selectedMenu : null,
                leading: _menuSelected == 'setting'
                    ? _selectedIcon
                    : const Icon(Icons.settings_outlined),
                title:_menuSelected == 'setting'? const Text("Setting", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 145, 255)),) :const Text("Setting"),
                onTap: () {
                  _haddleSelectionPage(4);
                },
              ),
              ListTile(
                tileColor: _menuSelected == 'login' ? _selectedMenu : null,
                leading: _menuSelected == 'login'
                    ? _selectedIcon
                    : const Icon(Icons.exit_to_app_outlined),
                title: _menuSelected == 'login'? const Text("Logout", style: TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 0, 145, 255)),) :const Text("Logout"),
                onTap: () {
                  _haddleSelectionPage(5);
                },
              )
            ],
          ),
        ),
        body: Container(
          child: _pages[r],
        ));
  }
}
