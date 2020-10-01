import 'package:custom_bottom_navigation_bar/module/scan_qrcode.dart';
import 'package:flutter/material.dart';

import 'BottomNavigationBar.dart';
import 'module/home_page.dart';
import 'module/setting_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Navigator.defaultRouteName,
      routes: <String, WidgetBuilder>{
        Navigator.defaultRouteName: (context) => const MyNavPage(),
        "/navigate": (context) => const MyNavPage(),
        "/home": (context) => HomePage(),
        "/setting": (context) => SettingPage(),
        "/scanqrcode": (context) => ScanQrCodePage(),
      },
    );
  }
}

