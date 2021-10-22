import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/model/product_List/product_list.dart';
import 'package:eco_app/model/product_model.dart';
import 'package:eco_app/ui/products/product_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum SingingCharacter { lafayette, jefferson }

class ProductList extends StatefulWidget {
  const ProductList({Key? key}) : super(key: key);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  int _radioValue = 0;
  SingingCharacter? _character = SingingCharacter.lafayette;

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
      body: ListView.builder(
        itemCount: itemList.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(16),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ProdectDetatil()));
                          },
                          child: Image.asset(
                            itemList[index].image,
                            height: MediaQuery.of(context).size.height * 0.20,
                            width: MediaQuery.of(context).size.width * 0.32,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(itemList[index].product_name,
                            style: const TextStyle(
                                fontSize: 20,
                                color: Colors.black87,
                                fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            Container(
                              child: RatingBarIndicator(
                                itemCount: 5,
                                itemSize: 16,
                                rating: 4,
                                itemBuilder: (context, index) => Icon(
                                  _selectedIcon ?? Icons.star,
                                  color: Colors.amber,
                                ),
                              ),
                            ),
                            Text(itemList[index].rating.toString()),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(
                              "assets/icon/refillable.svg",
                              height: 18,
                            ),
                            const SizedBox(width: 3),
                            Text("refillable",
                                style: TextStyle(
                                    color: Colors.greenAccent,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 16, bottom: 10),
                          child: Row(
                            children: [
                              Text(itemList[index].price),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.33,
                              ),
                              Text(itemList[index].quantity.toString() + "ml")
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 38,
                              decoration: BoxDecoration(
                                border: Border.all(color: Color(0xffe0e0e0)),
                              ),
                              child: FittedBox(
                                child: Row(
                                  children: [
                                    IconButton(
                                        icon: Icon(
                                          Icons.remove,
                                          size: 14,
                                        ),
                                        onPressed: () {
                                          setState(() {
                                            _itemCount--;
                                          });
                                        }),
                                    Text(
                                      _itemCount.toString(),
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    IconButton(
                                      icon: Icon(
                                        Icons.add,
                                        size: 14,
                                      ),
                                      onPressed: () =>
                                          setState(() => _itemCount++),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.12,
                            ),
                            SizedBox(
                              height: 45,
                              child: FittedBox(
                                child: TextButton(
                                  style: ButtonStyle(
                                      foregroundColor:
                                          MaterialStateProperty.all<Color>(
                                              Colors.white),
                                      backgroundColor:
                                          MaterialStateProperty.all<Color>(
                                              kPrimaryColor),
                                      shape: MaterialStateProperty.all<
                                              RoundedRectangleBorder>(
                                          RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ))),
                                  onPressed: () {
                                    showModalBottomSheet(
                                        backgroundColor: Colors.transparent,
                                        context: context,
                                        builder: (context) {
                                          return Column(
                                            children: [
                                              SizedBox(
                                                  child: Center(
                                                      child: Padding(
                                                padding: const EdgeInsets.only(
                                                    bottom: 8.0),
                                                child: CircleAvatar(
                                                    backgroundColor:
                                                        Colors.black,
                                                    child: IconButton(
                                                      onPressed: () {
                                                        Navigator.pop(context);
                                                      },
                                                      icon: const Icon(
                                                        Icons.close,
                                                        color: Colors.white,
                                                      ),
                                                    )),
                                              ))),
                                              Container(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.495,
                                                decoration: const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(20),
                                                      topRight:
                                                          Radius.circular(20),
                                                    )),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              top: 20,
                                                              left: 30),
                                                      child: Text(
                                                          product[index]
                                                              .product_name,
                                                          style: TextStyle(
                                                              fontSize: 22,
                                                              color: Colors
                                                                  .black87,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500)),
                                                    ),
                                                    SizedBox(height: 5),
                                                    const Padding(
                                                      padding: EdgeInsets.only(
                                                          left: 30),
                                                      child: Text("refillable",
                                                          style: TextStyle(
                                                              color: Colors
                                                                  .greenAccent,
                                                              fontSize: 14,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold)),
                                                    ),
                                                    Divider(
                                                      thickness: 2,
                                                      color: Colors.grey[300],
                                                    ),
                                                    SizedBox(height: 15),
                                                    Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        const Padding(
                                                          padding:
                                                              EdgeInsets.only(
                                                                  left: 25),
                                                          child: Text(
                                                            "Select any one",
                                                            style: TextStyle(
                                                                fontSize: 20),
                                                          ),
                                                        ),
                                                        ListTile(
                                                          trailing: const Text(
                                                            '\$200',
                                                          ),
                                                          title: Text(
                                                            'With Container',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          subtitle: Text(
                                                              "Aluminium Bottle"),
                                                          leading: Radio<
                                                              SingingCharacter>(
                                                            focusColor:
                                                                kPrimaryColor,
                                                            activeColor:
                                                                kPrimaryColor,
                                                            hoverColor:
                                                                kPrimaryColor,
                                                            value:
                                                                SingingCharacter
                                                                    .lafayette,
                                                            groupValue:
                                                                _character,
                                                            onChanged:
                                                                (SingingCharacter?
                                                                    value) {
                                                              setState(() {
                                                                _character =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                        ListTile(
                                                          trailing:
                                                              const Text("\$0"),
                                                          title: const Text(
                                                            'Without Container',
                                                            style: TextStyle(
                                                                fontWeight:
                                                                    FontWeight
                                                                        .bold),
                                                          ),
                                                          leading: Radio<
                                                              SingingCharacter>(
                                                            focusColor:
                                                                kPrimaryColor,
                                                            activeColor:
                                                                kPrimaryColor,
                                                            hoverColor:
                                                                kPrimaryColor,
                                                            value:
                                                                SingingCharacter
                                                                    .jefferson,
                                                            groupValue:
                                                                _character,
                                                            onChanged:
                                                                (SingingCharacter?
                                                                    value) {
                                                              setState(() {
                                                                _character =
                                                                    value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                    Center(
                                                      child: Container(
                                                          width: MediaQuery.of(
                                                                      context)
                                                                  .size
                                                                  .width *
                                                              0.20,
                                                          child: TextButton(
                                                            style: ButtonStyle(
                                                                foregroundColor:
                                                                    MaterialStateProperty.all<
                                                                            Color>(
                                                                        Colors
                                                                            .white),
                                                                backgroundColor:
                                                                    MaterialStateProperty.all<
                                                                            Color>(
                                                                        kPrimaryColor),
                                                                shape: MaterialStateProperty.all<
                                                                        RoundedRectangleBorder>(
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4),
                                                                ))),
                                                            onPressed: () {
                                                              setState(
                                                                () {
                                                                  _hasBeenPressed =
                                                                      !_hasBeenPressed;
                                                                },
                                                              );
                                                            },
                                                            child: Text(
                                                              "ADD",
                                                              style: TextStyle(
                                                                  fontSize: 11),
                                                            ),
                                                          )),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ],
                                          );
                                        });
                                  },
                                  child: const Padding(
                                    padding:
                                        EdgeInsets.only(left: 25, right: 25),
                                    child: Text(
                                      "ADD",
                                      style: TextStyle(fontSize: 12),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  thickness: 3,
                  color: Colors.grey[350],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
