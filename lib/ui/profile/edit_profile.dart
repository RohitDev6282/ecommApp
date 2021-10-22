import 'dart:ui';

import 'package:eco_app/constant/constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProifleState createState() => _EditProifleState();
}

class _EditProifleState extends State<EditProfile> {
  static const spaceBetweenDetail = Divider(
    height: 0.0,
    color: kLightGreyColor,
    thickness: 1.5,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kLightPurpleColor,
      body: SafeArea(
          child: GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back, color: Colors.black),
              ),
              Text(
                "Profile",
                style: TextStyle(color: Colors.black, fontSize: 20),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Save",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ))
            ],
          ),
          SizedBox(height: 35),
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Colors.deepPurple[200],
                radius: 65,
                child: ClipOval(
                  child: Image.asset(
                    'assets/images/profile.jpg',
                    height: 120,
                    width: 120,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                  bottom: 5,
                  right: 10,
                  child: Container(
                    height: 35,
                    width: 35,
                    child: Icon(Icons.camera_alt_outlined,
                        color: Colors.white, size: 18),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange[300],
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                  ))
            ],
          ),
          SizedBox(height: 35),
          Container(
            height: MediaQuery.of(context).size.height * 0.562735,
            decoration: const BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    buildTextField("Username", "Prachi Mishra"),
                    spaceBetweenDetail,
                    SizedBox(
                      height: 25,
                    ),
                    buildTextField("Email address", "prachi1234@gmail.com"),
                    spaceBetweenDetail,
                    SizedBox(
                      height: 25,
                    ),
                    buildTextField("Phone", "987654321"),
                    spaceBetweenDetail,
                    SizedBox(
                      height: 25,
                    ),
                    buildTextField("Date of Birth", "04/03/1998"),
                  ]),
            ),
          )
        ]),
      )),
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
          // currentIndex: _selectedIndex,
          selectedItemColor: kPrimaryColor,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
          onTap: (int index) {
            // _selectTab(tabs[index], index);
          },
        ),
      ),
    );
  }

  TextField buildTextField(String labelText, String placeholder) {
    return TextField(
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.only(bottom: 25),
        floatingLabelBehavior: FloatingLabelBehavior.always,
        labelText: labelText,
        labelStyle: TextStyle(height: 20, fontSize: 18),
        hintText: placeholder,
        hintStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w500,
            height: 1.5,
            fontSize: 18),
        fillColor: Colors.white70,
      ),
    );
  }
}
