

import 'package:flutter/material.dart';

import 'CircularOuterNotchedRectangle.dart';
import 'FABBottomAppBarItem.dart';
import 'module/home_page.dart';
import 'module/scan_qrcode.dart';
import 'module/setting_page.dart';

class MyNavPage extends StatefulWidget {
  const MyNavPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyNavPageState createState() => _MyNavPageState();
}

class _MyNavPageState extends State<MyNavPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _navigateToScreen(_index),
      bottomNavigationBar: FABBottomAppBar(
        centerItemText: 'Scan QR-Code',
        color: Colors.grey,
        backgroundColor: Colors.white,
        selectedColor: Colors.red,
        notchedShape: CircularOuterNotchedRectangle(),
        onTabSelected: (index) => setState(() => _index = index),
        items: [
          FABBottomAppBarItem(iconData: Icons.home, text: 'Home'),
          FABBottomAppBarItem(iconData: Icons.settings, text: 'Setting'),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, "/scanqrcode");
        },
        child: Icon(Icons.add),
        elevation: 2.0,
      ),
    );
  }

  Widget _navigateToScreen(int index) {
    switch (index) {
      case 0:
        return HomePage();
      case 1:
        return SettingPage();
      case 2:
        return ScanQrCodePage();
      default:
        return HomePage();
    }
  }
}
