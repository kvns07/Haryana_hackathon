import 'package:flutter/material.dart';
import 'wup.dart';
import 'package:haryana_hackathon/components/txt.dart';
import 'sos.dart';
class GridOfTabs extends StatelessWidget {
  List<String> tabTitles = [
    'Zipcode Resource',
    'Emergency Line',
    'SOS',
    'Call Administrator',
    'Report Bust',
    'Search',
    'Group Report',
    'Crash',
    'Educational Contest',
  ];
  List<IconData> iconTitles=[
    Icons.maps_home_work_outlined, Icons.emergency, Icons.sos, Icons.security, Icons.report, Icons.search, Icons.close, Icons.group, Icons.car_crash, Icons.cast_for_education
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      Container(
          width: MediaQuery.of(context).size.width,
          height: 100.0,
          // color: Colors.blue,
          child: Center(
            child: Text(
              'Haryana',
              style: TextStyle(
                color: Colors.deepPurple,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
          ),
          itemCount: tabTitles.length,
          itemBuilder: (context, index) {
            // String txt=tabTitles[index];
            return GestureDetector(
              onTap: () {
                // Handle onPressed event here
                if(tabTitles[index]=='SOS'){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SOSPage()),
                  );
                }
                else Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => wup(appbar: tabTitles[index],)),
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
                  child:Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            iconTitles[index],
                            // Use the icon you want
                            color: Colors.yellow,
                            size: 50,
                          ),
                          SizedBox(width: 8.0), // Adjust spacing between icon and text
                          Center(
                            child: Text(
                              tabTitles[index],
                              style: TextStyle(fontSize: 15.0,color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
            // return GestureDetector(
            //   onTap: () {
            //     // Handle tab click
            //     print('Tab ${index + 1} clicked');
            //   },
            //   child: Container(
            //     color: Colors.blue, // You can customize the color
            //     child: Center(
            //       child: Text(
            //         tabTitles[index],
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 16.0,
            //         ),
            //       ),
            //     ),
            //   ),
            // );
          },
        ),
      ],
    );
  }
}