class CatalogModel {
  static final items = [
    Item(
      id: 01,
      name: "iphone 12 pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      image:
          "https://cellbuddy.in/buddy/wp-content/uploads/2022/10/12-Pro-Gold.png",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String image;

  Item({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.image,
    required,
  });
}
