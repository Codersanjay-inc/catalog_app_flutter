class Item {
  final String id;
  final String name;
  final String desc;
  final String icon;
  final String tags;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.icon,
      required this.tags});
}

final apis = [
  Item(
    id: "vine-api",
    name: "Vine API",
    desc:
        "The Vine API allows users to retrieve data from the service, including popular videos, user data, a user's timeline, videos matching a given tag, individual posts, and notifications.",
    icon: "vine",
    tags: '[ "video", "mobile" ]',
  )
];
