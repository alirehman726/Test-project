// import 'package:curved_navigation_bar/curved_navigation_bar.dart';
// import 'package:flutter/material.dart';
// import 'package:project/home.dart';
// import 'package:project/search_page.dart';
// import 'package:project/settings_page.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: HomePage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({Key? key}) : super(key: key);

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
// int current_index = 0;
// final List<Widget> pages = [
//   const Home(),
//   const SearchPage(),
//   const SettingsPage(),
// ];

//   void OnTapped(int index) {
//     setState(() {
//       current_index = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Demo"),
//       ),
//       body: pages[current_index],
//       bottomNavigationBar: CurvedNavigationBar(
//           backgroundColor: Colors.white,
//           color: Colors.orange,
//           onTap: OnTapped,
//           items: <Widget>[
//             Icon(Icons.home),
//             Icon(Icons.search),
//             Icon(Icons.settings),
//           ]),
//       // bottomNavigationBar: BottomNavigationBar(
//       //     backgroundColor: Colors.orange,
//       //     iconSize: 26,
//       //     selectedItemColor: Colors.black,
//       //     unselectedItemColor: Colors.white,
//       //     currentIndex: current_index,
//       //     selectedFontSize: 20,
//       //     unselectedFontSize: 14,
//       //     onTap: OnTapped,
//       //     items: <BottomNavigationBarItem>[
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.home), label: "Home", tooltip: "Home"),
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.search), label: "Search", tooltip: "Search"),
//       //       BottomNavigationBarItem(
//       //           icon: Icon(Icons.settings),
//       //           label: "Settings",
//       //           tooltip: "Settings"),
//       //     ]),
//     );
//   }
// }

import 'package:curved_labeled_navigation_bar/curved_navigation_bar.dart';
import 'package:curved_labeled_navigation_bar/curved_navigation_bar_item.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:project/home.dart';
import 'package:project/products_page.dart';
import 'package:project/profile_page.dart';
import 'package:project/repots_page.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BottomNavBar(),
      ),
    );

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _page = 0;
  GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();

  int current_index = 0;
  final List<Widget> pages = [
    const Home(),
    const Products(),
    const Reports(),
    const Profile(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        key: _bottomNavigationKey,
        index: 0,
        items: [
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/home.png",
              alignment: Alignment.centerLeft,
              height: 18,
              width: 18,
            ),
            label: 'Home',
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/products.png",
              alignment: Alignment.centerLeft,
              color: Colors.grey,
              height: 18,
              width: 18,
            ),
            label: 'Products',
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/report.png",
              alignment: Alignment.centerLeft,
              height: 18,
              width: 18,
            ),
            label: 'Reports',
          ),
          CurvedNavigationBarItem(
            child: Image.asset(
              "assets/profile.png",
              alignment: Alignment.centerLeft,
              height: 18,
              width: 18,
            ),
            label: 'Profile',
          ),
        ],
        // color: Colors.grey[50],
        color: HexColor("f3f6f4"),
        buttonBackgroundColor: Colors.green,
        backgroundColor: Colors.white,
        animationCurve: Curves.easeInOut,
        animationDuration: Duration(milliseconds: 600),
        onTap: (index) {
          setState(() {
            _page = index;
          });
          print(_page);
        },
        letIndexChange: (index) => true,
      ),
      body: pages[_page],
    );
  }
}
