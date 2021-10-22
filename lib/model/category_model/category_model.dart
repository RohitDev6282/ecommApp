class CategoryList {
  final int id;
  final String catergory_image;
  final String catergory_name;

  CategoryList({
    required this.id,
    required this.catergory_image,
    required this.catergory_name,
  });
}

List<CategoryList> categoryList = [
  CategoryList(
    id: 1,
    catergory_image: "assets/images/product2.jpeg",
    catergory_name: "Essoy Air Freshner",
  ),
  CategoryList(
    id: 2,
    catergory_image: "assets/images/product2.jpeg",
    catergory_name: "Essoy Air Freshner",
  ),
];
