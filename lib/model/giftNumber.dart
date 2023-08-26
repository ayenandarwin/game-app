class GiftNumber {
  String name, image;

  GiftNumber({required this.name, required this.image});

  factory GiftNumber.fromJson(dynamic data) {
    return GiftNumber(
      name: data['name'],
      image: data['image'],
    );
  }
}
