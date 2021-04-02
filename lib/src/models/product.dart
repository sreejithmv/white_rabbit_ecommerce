// To parse this JSON data, do
//
//     final product = productFromJson(jsonString);

import 'dart:convert';

List<Product> productFromJson(String str) =>
    List<Product>.from(json.decode(str).map((x) => Product.fromJson(x)));

String productToJson(List<Product> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Product {
  Product({
    this.id,
    this.image,
    this.name,
    this.description,
    this.rating,
    this.category,
  });

  int id;
  String image;
  String name;
  String description;
  int rating;
  String category;

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] == null ? null : json["id"],
        image: json["image"] == null ? null : json["image"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        rating: json["rating"] == null ? null : json["rating"],
        category: json["category"] == null ? null : json["category"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "image": image == null ? null : image,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "rating": rating == null ? null : rating,
        "category": category == null ? null : category,
      };
}
