class CartList {
  final int id;
  final String image;
  final double rating;
  final String product_name;
  final String fillable;
  final String price;
  final int quantity;

  CartList({
    required this.id,
    required this.image,
    required this.product_name,
    required this.rating,
    required this.price,
    required this.quantity,
    required this.fillable,
  });
}

List<CartList> cartList = [
  CartList(
    id: 1,
    image: "assets/images/product2.jpeg",
    product_name: "Essoy Air Freshner",
    rating: 4.5,
    price: "\$1995",
    quantity: 500,
    fillable: "refillabe",
  ),
  CartList(
    id: 2,
    image: "assets/images/product2.jpeg",
    product_name: "Essoy Air Freshner",
    rating: 4.5,
    price: "\$1995",
    quantity: 500,
    fillable: "Pre-packaged",
  ),
];
