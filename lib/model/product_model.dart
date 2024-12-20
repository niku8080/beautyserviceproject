
class Product {
  final String name;
  final String description;
  final String imagePath;
  final int price;

  Product({
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
  });

  
  Map<String, dynamic> toMap() {
    return {
      'name': name,
      'description': description,
      'imagePath': imagePath,
      'price': price,
    };
  }

  // Convert Map to Product
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      name: map['name'],
      description: map['description'],
      imagePath: map['imagePath'],
      price: map['price'],
    );
  }
}
class product1 {
  final int id;
  final String name;
  final String imagePath;
  final double price;

  product1({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.price,
  });
}
