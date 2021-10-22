class Product {
  final int id;
  final String image, product_name;

  Product( {
    required this.id,
    required this.image,
    // required this.image,
    // required this.images,
    required this.product_name,

  });
}

List<Product> product = [
  Product(
      id: 1,
      image: "assets/images/product1.jpeg",
      product_name: "Essoy Air Freshner",
      
      

  ),
  Product(
      id: 2,

      image: "assets/images/product2.jpeg",
      product_name: "Herbal Strategi Laundary Detergent",
      
      

  ),
  Product(
      id: 3,

      image: "assets/images/product3.jpeg",
      product_name: "Esosys Al",
      
      

  ),
  Product(
      id: 4,
      image:  "assets/images/product1.jpeg",
      product_name: "@xteemu",
      
      

  ),
];
