import 'dart:ui';

import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/model/order_model/ordermode.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MyOrderPage extends StatefulWidget {
  const MyOrderPage({Key? key}) : super(key: key);

  @override
  _MyOrderPageState createState() => _MyOrderPageState();
}

class _MyOrderPageState extends State<MyOrderPage> {
  static const TextStyle optionstyle = TextStyle(
    color: Colors.black54,
  );
  int _radioValue = 0;

  int _selectedIndex = 0;
  var a = $;
  late final _ratingController;
  late double _rating;

  double _userRating = 4.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;
// on click added button on text channge
  String addText = "added";

  IconData? _selectedIcon;
  bool _hasBeenPressed = false;

  static var $;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  int _itemCount = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:
            //  SafeArea(
            //   child: Padding(
            //     padding: const EdgeInsets.all(8.0),
            //     child: Column(
            //       crossAxisAlignment: CrossAxisAlignment.start,
            //       children: [
            //         const Text(
            //           "My orders",
            //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            //         ),
            //         SizedBox(
            //           height: 5,
            //         ),
            //         Container(
            //           child: Expanded(
            //             child: ListView.builder(
            //               scrollDirection: Axis.vertical,
            //               itemCount: orderlist.length,
            //               itemBuilder: (context, index) {
            //                 return Column(
            //                   crossAxisAlignment: CrossAxisAlignment.start,
            //                   children: [
            //                     Padding(
            //                       padding: const EdgeInsets.only(top: 15, bottom: 15),
            //                       child: Row(
            //                         children: [
            //                           ClipRRect(
            //                             borderRadius: BorderRadius.circular(0),
            //                             child: Image.asset(
            //                               orderlist[index].image,
            //                               height: MediaQuery.of(context).size.height *
            //                                   0.12,
            //                               width:
            //                                   MediaQuery.of(context).size.width * 0.2,
            //                               fit: BoxFit.fill,
            //                             ),
            //                           ),
            //                           Padding(
            //                             padding: const EdgeInsets.all(8.0),
            //                             child: Column(
            //                               crossAxisAlignment:
            //                                   CrossAxisAlignment.start,
            //                               children: <Widget>[
            //                                 Text(orderlist[index].product_name,
            //                                     style: const TextStyle(
            //                                         fontSize: 20,
            //                                         color: Colors.black87,
            //                                         fontWeight: FontWeight.w500)),
            //                                 Row(
            //                                   children: [
            //                                     RatingBarIndicator(
            //                                       itemCount: 5,
            //                                       itemSize: 16,
            //                                       rating: 4,
            //                                       itemBuilder: (context, index) =>
            //                                           Icon(
            //                                         _selectedIcon ?? Icons.star,
            //                                         color: Colors.amber,
            //                                       ),
            //                                     ),
            //                                     Text(orderlist[index]
            //                                         .rating
            //                                         .toString()),
            //                                   ],
            //                                 ),
            //                                 Row(
            //                                   children: [
            //                                     SvgPicture.asset(
            //                                         "assets/icon/refillable.svg",
            //                                         height: 18),
            //                                     const SizedBox(
            //                                       width: 2,
            //                                     ),
            //                                     Text(orderlist[index].prepackage,
            //                                         style: TextStyle(
            //                                             color: Colors.greenAccent,
            //                                             fontSize: 12,
            //                                             fontWeight: FontWeight.bold)),
            //                                   ],
            //                                 ),
            //                                 Text(
            //                                     orderlist[index].quantity.toString() +
            //                                         "ml"),
            //                                 Text(orderlist[index].price),
            //                               ],
            //                             ),
            //                           ),
            //                         ],
            //                       ),
            //                     ),
            //                   ],
            //                 );
            //               },
            //             ),
            //           ),
            //         ),
            //         Row(
            //           children: [
            //             Text(
            //               "Grand Total",
            //               style: TextStyle(fontSize: 16),
            //             ),
            //             Spacer(),
            //             Text(
            //               "\$760.00",
            //               style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            //             )
            //           ],
            //         ),
            //         SizedBox(
            //           height: 170,
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            // floatingActionButton: Container(
            //   height: 40,
            //   width: MediaQuery.of(context).size.width * 0.92,
            //   decoration: BoxDecoration(
            //       color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
            //   child: Row(
            //     children: [
            //       MaterialButton(
            //         onPressed: () {},
            //         child: Text(
            //           "CHECK OUT",
            //           style: TextStyle(color: Colors.white, fontSize: 12),
            //         ),
            //       ),
            //       Spacer(),
            //       Padding(
            //         padding: EdgeInsets.only(right: 15),
            //         child: Icon(
            //           Icons.arrow_forward_ios,
            //           color: Colors.white,
            //           size: 16,
            //         ),
            //       ),
            //     ],
            //   ),
            // ),

            SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.63,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "My orders",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              Flexible(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(width: 2, color: kLightGreyColor)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(top: 20, left: 12),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Text(
                                      "Order Number : MUM1234",
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    const Spacer(),
                                    Padding(
                                      padding:
                                          const EdgeInsets.only(right: 12.0),
                                      child: SizedBox(
                                        height: 30,
                                        child: FittedBox(
                                          child: TextButton(
                                            style: ButtonStyle(
                                                foregroundColor:
                                                    MaterialStateProperty.all<
                                                        Color>(Colors.red),
                                                backgroundColor:
                                                    MaterialStateProperty.all<
                                                            Color>(
                                                        Color(0xffffcdd2)),
                                                shape: MaterialStateProperty.all<
                                                        RoundedRectangleBorder>(
                                                    RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(8),
                                                ))),
                                            onPressed: () {
                                              // Navigator.push(
                                              //     context,
                                              //     MaterialPageRoute(
                                              //         builder: (context) => ProductList()));
                                            },
                                            child: const Padding(
                                              padding: EdgeInsets.only(
                                                  left: 5, right: 5),
                                              child: Text(
                                                "Return",
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Text(
                                  "2 item",
                                  style: TextStyle(fontSize: 14),
                                )
                              ],
                            )),
                        Flexible(
                          child: ListView.builder(
                            itemCount: orderlist.length,
                            itemBuilder: (context, index) {
                              return Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          child: Image.asset(
                                            orderlist[index].image,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.115,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.185,
                                            fit: BoxFit.fill,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 20,
                                        ),
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: <Widget>[
                                            Text(orderlist[index].product_name,
                                                style: const TextStyle(
                                                    fontSize: 20,
                                                    color: Colors.black87,
                                                    fontWeight:
                                                        FontWeight.w500)),
                                            Row(
                                              children: [
                                                RatingBarIndicator(
                                                  itemCount: 5,
                                                  itemSize: 16,
                                                  rating: 4.5,
                                                  itemBuilder:
                                                      (context, index) => Icon(
                                                    _selectedIcon ?? Icons.star,
                                                    color: Colors.amber,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              children: [
                                                SvgPicture.asset(
                                                  "assets/icon/refillable.svg",
                                                  height: 18,
                                                ),
                                                const SizedBox(width: 3),
                                                Text(
                                                    orderlist[index].prepackage,
                                                    style: const TextStyle(
                                                        color:
                                                            Colors.greenAccent,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.bold)),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 50.0, left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Text(
                                                orderlist[index]
                                                        .quantity
                                                        .toString() +
                                                    "ml",
                                                style: const TextStyle(
                                                    fontSize: 12),
                                              ),
                                              Text(orderlist[index].price),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ), //Product list end here
                                  ],
                                ),
                              );
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: const [
                                  Text(
                                    "Grand Total :",
                                    style: optionstyle,
                                  ),
                                  Spacer(),
                                  Text("\$400.00",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold))
                                ],
                              ),
                              const Divider(
                                color: kLightGreyColor,
                                thickness: 1,
                                height: 30,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: const [
                                      Text(
                                        "Ordered on:22 jun 2021 at 6:14pm",
                                        style: TextStyle(
                                          color: Colors.black54,
                                        ),
                                      ),
                                      Text(
                                        "Status:Delivered",
                                        style: optionstyle,
                                      )
                                    ],
                                  ),
                                  const Spacer(),
                                  Container(
                                    height: 30,
                                    child: ElevatedButton(
                                        style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.all(
                                                  const Color(0xff6515dd)),
                                        ),
                                        onPressed: () {},
                                        child: const Text(
                                          "Reorder",
                                          style: TextStyle(fontSize: 12),
                                        )),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    ));
  }
}
