import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:spintech/tools/cart/cart_screen.dart';
import 'package:spintech/tools/product%20screen/product_screen.dart';

class BottomNavbar extends StatefulWidget {
  static final routeName = '/bottom';

  const BottomNavbar({Key? key}) : super(key: key);

  @override
  _BottomNavbarState createState() => _BottomNavbarState();
}

class _BottomNavbarState extends State<BottomNavbar> {
  int _currentIndex = 0;
  double navbarItemWidth = 42;

  List<Widget> _screens = [
    ProductScreen(),
    CartScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Container(
              width: navbarItemWidth,
              child: Icon(FontAwesomeIcons.soap),
            ),
          ),
          BottomNavigationBarItem(
            icon: Container(
              width: navbarItemWidth,
              child: Icon(FontAwesomeIcons.caretDown),
            ),
          )
        ],
        currentIndex: _currentIndex,
        showUnselectedLabels: true,
        backgroundColor: Color(0xFF3783CD),
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.white,
        selectedLabelStyle: TextStyle(
          fontSize: 18,
          height: 1.3,
          fontWeight: FontWeight.bold,
          color: Color(0xFFFB6F18),
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 15,
          height: 1.3,
          color: Color(0xFFFB6F18),
        ),
      ),
    );
  }
}
