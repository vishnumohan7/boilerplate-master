import 'package:flutter/cupertino.dart';

import 'Category.dart';

class ProductsModel {
  ProductsModel({
    this.id,
    required this.title,
    required this.price,
    this.description,
    required this.images,
    this.creationAt,
    this.updatedAt,
    required this.category,
  });

  factory ProductsModel.fromJson(dynamic json) {
    return ProductsModel(
        id: json['id'],
        title: json['title'],
        price: json['price'],
        description: json['description'],
        images: json['images'] != null ? json['images'].cast<String>() : [],
        creationAt: json['creationAt'],
        updatedAt: json['updatedAt'],
        category: (json['category'] != null
            ? Category.fromJson(json['category'])
            : null)!);
  }
  int? id;
  String title;
  int price;
  String? description;
  List<String> images;
  String? creationAt;
  String? updatedAt;
  Category category;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['title'] = title;
    map['price'] = price;
    map['description'] = description;
    map['images'] = images;
    map['creationAt'] = creationAt;
    map['updatedAt'] = updatedAt;
    if (category != null) {
      map['category'] = category.toJson();
    }
    return map;
  }
}
