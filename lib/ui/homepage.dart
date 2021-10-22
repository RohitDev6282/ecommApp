import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/ui/cart/cart.dart';
import 'package:eco_app/ui/profile.dart';
import 'package:eco_app/widget/horizontal_list.dart';
import 'package:eco_app/ui/searchPage/search_page.dart';
import 'package:eco_app/widget/search_button.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Widget _currentPage = HomePage();
  final tabs = [
    HomeBody(),
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
    return Scaffold(
      body: tabs[_selectedIndex],
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
              icon: Icon(Icons.shopping_cart_outlined, size: 18),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search, size: 18),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person, size: 18),
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
    );
  }
}

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  _HomeBodyState createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(children: [
            SearchBar(onPressed: () {
              // Navigator.push(context,MaterialPageRoute(builder: (context) => const SearchPage()));
            }),
            const Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 120, 10),
              child: Text("Here's your chance to save plastic",
                  maxLines: 2, style: kTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  FittedBox(
                    child: TextButton(
                      style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.white),
                          backgroundColor:
                              MaterialStateProperty.all<Color>(kPrimaryColor),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ))),
                      onPressed: () {},
                      child: Text(
                        "All",
                        style: TextStyle(fontSize: 11),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Refliable",
                      style: TextStyle(color: Colors.black54, fontSize: 13),
                    ),
                  )
                ],
              ),
            ),
            HorizontalList(),
            Divider(
              color: Colors.grey[300],
              thickness: 5,
            ),
            HorizontalList(),
          ]),
        ),
      ),
    );
  }
}
