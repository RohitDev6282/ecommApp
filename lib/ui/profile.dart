import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/model/product_model.dart';
import 'package:eco_app/ui/orderpage/orderpage.dart';
import 'package:eco_app/ui/profile/edit_profile.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ShopState createState() => _ShopState();
}

class _ShopState extends State<ProfilePage> {
  bool isExpanded = false;
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Stack(
          children: [
            CustomPaint(size: Size(250, 150), painter: DrawTriangle()),
            Column(
              children: [
                Row(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        )),
                  ],
                ),
                SizedBox(height: 80),
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
              ],
            ),
          ],
        ),
        SizedBox(height: 15),
        Column(
          children: [
            Text(
              "Prachi Mishra",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
            ),
            Text(
              "Prime User",
              style: TextStyle(fontSize: 19),
            ),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.04,
        ),
        Expanded(
          child: Container(
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
              padding: const EdgeInsets.fromLTRB(10, 15, 10, 12),
              child: Column(
                children: [
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EditProfile()));
                    },
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.pink[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.person,
                        color: Colors.pinkAccent[400],
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Edit Profile",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyOrderPage()));
                    },
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue[100],
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.business,
                        color: Colors.blue,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: Text(
                      "My order",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 20),
                  Theme(
                    data: Theme.of(context)
                        .copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      leading: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.red[100],
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Icon(
                          Icons.favorite,
                          color: Colors.red[300],
                        ),
                      ),

                      // trailing: Icon(
                      //   Icons.arrow_forward_ios,color: Colors.black,
                      //   size: 22,
                      // ),
                      title: Text(
                        "Favourites",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),

                      trailing: Icon(
                        _customTileExpanded
                            ? Icons.keyboard_arrow_down_sharp
                            : Icons.keyboard_arrow_right_sharp,
                        size: 35,
                        color: Colors.black,
                      ),

                      //  onExpansionChanged: (bool expanded) {
                      // setState(() => _customTileExpanded = expanded);

                      children: [
                        SizedBox(height: 20),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.28,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: product.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.only(left: 25, right: 2),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                            color:
                                                Colors.grey.withOpacity(0.25),
                                            spreadRadius: 3,
                                            blurRadius: 3,
                                            offset: Offset(0,
                                                0), // changes position of shadow
                                          ),
                                        ],
                                      ),
                                      child: ClipRRect(
                                        child: Image.asset(
                                          product[index].image,
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.15,
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.25,
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 5),

                                    // ignore: avoid_unnecessary_containers
                                    Container(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      height: 35,
                                      child: Text(
                                        product[index].product_name,
                                        maxLines: 2,
                                        textAlign: TextAlign.start,
                                        style: const TextStyle(
                                          fontSize: 12.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          "500ml",
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        Text(
                                          "\$200",
                                          style: TextStyle(
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500),
                                        )
                                      ],
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Container(
                                          height: 35,
                                          child: FittedBox(
                                            child: MaterialButton(
                                              color: kPrimaryColor,
                                              onPressed: () {},
                                              child: Padding(
                                                padding: const EdgeInsets.only(
                                                    left: 35, right: 35),
                                                child: Text(
                                                  "Add",
                                                  style: TextStyle(
                                                      fontSize: 14,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                      onExpansionChanged: (bool expanded) {
                        setState(() => _customTileExpanded = expanded);
                      },
                    ),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: Colors.black12,
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Icon(
                        Icons.help,
                        color: Colors.black,
                      ),
                    ),
                    trailing: Icon(
                      Icons.keyboard_arrow_right_sharp,
                      size: 35,
                      color: Colors.black,
                    ),
                    title: Text(
                      "Help",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(height: 10)
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class DrawTriangle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
    path.moveTo(size.width * 2, 0);

    path.lineTo(0, size.height * 0);
    path.lineTo(0, size.width * 0.35);

    path.lineTo(200, 250);
    path.close();
    canvas.drawPath(path, Paint()..color = kPrimaryColor);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
