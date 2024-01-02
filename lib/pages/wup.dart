import 'package:flutter/material.dart';

class wup extends StatefulWidget {

  wup({required String this.appbar});
  final String appbar;
  @override
  State<wup> createState() => _wupState();
}

class _wupState extends State<wup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appbar),
      ),
      body: Center(
        child: Container(
          width: 200.0,
          height: 100.0,
          // color: Colors.blue,
          child: Center(
            child: Text(
              'Work under progress....',
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
              ),
            ),
          ),
        ),
      ),
      // bottomNavigationBar: BottomNavigationBar(
      //   currentIndex: _currentIndex,
      //   onTap: (index) {
      //     setState(() {
      //       _currentIndex = index;
      //     });
      //   },
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'Home',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.dashboard),
      //       label: 'DashBoard',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'Settings',
      //     ),
      //   ],
      // ),
    );
  }
}
