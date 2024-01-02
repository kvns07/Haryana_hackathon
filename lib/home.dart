import 'package:flutter/material.dart';
import 'package:haryana_hackathon/pages/wup.dart';
import 'pages/grid.dart';
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Admin Access'),
      ),
      body: GridOfTabs(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          const BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'DashBoard',
          ),
          const BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                // Handle onPressed event here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wup(appbar: 'ZipCode Related Resource',)),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 220,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF7983e8),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child:const Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.maps_home_work_outlined, // Use the icon you want
                          color: Colors.yellow,
                          size: 55,
                        ),
                        SizedBox(width: 8.0), // Adjust spacing between icon and text
                        Text(
                          'ZipCode Resource',
                          style: TextStyle(fontSize: 15.5,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                // Handle onPressed event here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wup(appbar: 'Emergency Helpline',)),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 220,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Color(0xFF7983e8),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child:const Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.emergency, // Use the icon you want
                          color: Colors.yellow,
                          size: 55,
                        ),
                        SizedBox(width: 8.0), // Adjust spacing between icon and text
                        Text(
                          'Emergency Helpline',
                          style: TextStyle(fontSize: 15.5,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(width: 20),
            GestureDetector(
              onTap: () {
                // Handle onPressed event here
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wup(appbar: 'Contest Management',)),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  width: 220,
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child:const Center(
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.manage_accounts, // Use the icon you want
                          color: Colors.yellow,
                          size: 55,
                        ),
                        SizedBox(width: 8.0), // Adjust spacing between icon and text
                        Text(
                          'Contest Management',
                          style: TextStyle(fontSize: 15.5,color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
