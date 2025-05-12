class Product {
  final int id;
  final String title;
  final String description;

  Product({required this.id, required this.title, required this.description});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'] ?? 0,
      title: json['title'] ?? 'No Title',
      description: json['desc'] ?? 'No Description',
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'desc': description,
  };
}
