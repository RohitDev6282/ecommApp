import 'package:eco_app/constant/constant.dart';
import 'package:eco_app/model/cart_model/cart_model.dart';
import 'package:eco_app/model/product_List/product_list.dart';
import 'package:eco_app/ui/products/all_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  SingingCharacter? _character = SingingCharacter.lafayette;

  var a = $;
  late final _ratingController;
  late double _rating;

  double _userRating = 4.0;
  int _ratingBarMode = 1;
  double _initialRating = 2.0;
  bool _isRTLMode = false;
  bool _isVertical = false;

  IconData? _selectedIcon;
  int _itemCount = 1;

  void increament() {
    setState(() {
      _itemCount++;
    });
  }

  void decreament() {
    for (_itemCount = 1; _itemCount > 1; _itemCount--) {
      setState(() {
        _itemCount--;
      });
    }
  }

  static var $;

  @override
  void initState() {
    super.initState();
    _ratingController = TextEditingController(text: '3.0');
    _rating = _initialRating;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 15, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Shoping Cart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "2 Items",
                style: TextStyle(
                  fontSize: 13,
                ),
              ),
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  itemCount: itemList.length,
                  itemBuilder: (context, index) {
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 15, bottom: 15),
                          child: Row(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: Image.asset(
                                  cartList[index].image,
                                  height:
                                      MediaQuery.of(context).size.height * 0.2,
                                  width:
                                      MediaQuery.of(context).size.width * 0.33,
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Text(cartList[index].product_name,
                                        style: const TextStyle(
                                            fontSize: 20,
                                            color: Colors.black87,
                                            fontWeight: FontWeight.w500)),
                                    Row(
                                      children: [
                                        RatingBarIndicator(
                                          itemCount: 5,
                                          itemSize: 16,
                                          rating: 4,
                                          itemBuilder: (context, index) => Icon(
                                            _selectedIcon ?? Icons.star,
                                            color: Colors.amber,
                                          ),
                                        ),
                                        Text(cartList[index].rating.toString()),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        SvgPicture.asset(
                                            "assets/icon/refillable.svg",
                                            height: 18),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        Text("refillable",
                                            style: TextStyle(
                                                color: Colors.greenAccent,
                                                fontSize: 12,
                                                fontWeight: FontWeight.bold)),
                                      ],
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 16, bottom: 10),
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.4,
                                          ),
                                          Text(itemList[index]
                                                  .quantity
                                                  .toString() +
                                              "ml")
                                        ],
                                      ),
                                    ),
                                    Row(
                                      children: [
                                        Text(itemList[index].price),
                                        SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width *
                                              0.2,
                                        ),
                                        Container(
                                          height: 38,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Color(0xffe0e0e0)),
                                          ),
                                          child: FittedBox(
                                            child: Row(
                                              children: [
                                                IconButton(
                                                    icon: Icon(
                                                      Icons.remove,
                                                      size: 14,
                                                    ),
                                                    onPressed: decreament),
                                                Text(
                                                  _itemCount.toString(),
                                                  style:
                                                      TextStyle(fontSize: 16),
                                                ),
                                                IconButton(
                                                    icon: Icon(
                                                      Icons.add,
                                                      size: 14,
                                                    ),
                                                    onPressed: increament),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          thickness: 2,
                          color: Colors.grey[350],
                        ),
                      ],
                    );
                  },
                ),
              ),
              Row(
                children: [
                  Text(
                    "Grand Total",
                    style: TextStyle(fontSize: 16),
                  ),
                  Spacer(),
                  Text(
                    "\$760.00",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
              SizedBox(
                height: 170,
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 40,
        width: MediaQuery.of(context).size.width * 0.92,
        decoration: BoxDecoration(
            color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
        child: Row(
          children: [
            MaterialButton(
              onPressed: () {},
              child: Text(
                "CHECK OUT",
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(right: 15),
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.white,
                size: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
