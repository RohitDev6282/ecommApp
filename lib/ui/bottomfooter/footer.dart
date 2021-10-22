import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/ui/cart/cart.dart';
import 'package:eco_app/ui/homepage.dart';
import 'package:eco_app/ui/profile.dart';
import 'package:eco_app/ui/searchPage/search_page.dart';
import 'package:flutter/material.dart';

class Footer extends StatefulWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  Widget _currentPage = HomePage();
  final tabs = const [
    HomePage(),
    CartPage(),
    SearchPage(),
    ProfilePage(),
  ];
  
  int _selectedIndex = 0;

  void _selectTab(Widget tabItem, int index) {
    setState(() {
      _currentPage = tabs[index];
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: <Widget>[
          tabs[_selectedIndex],
        ]),
        //  tabs[_selectedIndex],
        bottomNavigationBar: Container(
          height: 60,
          child: BottomNavigationBar(
            selectedLabelStyle: TextStyle(fontSize: 10),
            unselectedFontSize: 9,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 18),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag_outlined, size: 18),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search, size: 18),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_outlined, size: 18),
                label: 'Profile',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            onTap: (int index) {
              _selectTab(tabs[index], index);
            },
          ),
        ),
      ),
    );
  }

}
