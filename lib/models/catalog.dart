class CatalogModel {
  static final items = [
    Item(
      id: 01,
      name: "iphone 12 pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      image:
          "https://www.croma.com/apple-iphone-12-64gb-purple-/p/234252?utm_source=google&utm_medium=ps&utm_campaign=sok_pmax-high_aov&gclid=CjwKCAiApvebBhAvEiwAe7mHSBmnBF_BLbcyP6tdrtqoKVcpfFi0pNkllJ5gCBSGWYPWtHpGVFUzGxoC2AoQAvD_BwE",
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
