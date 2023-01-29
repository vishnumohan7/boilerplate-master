import 'dart:convert';

import 'package:boilerplate/models/ProductsModel.dart';
import 'package:http/http.dart' as http;

class ApiService {
  getAllProducts() async {
    List<ProductsModel> products = [];
    try {
      var response = await http
          .get(Uri.parse("https://api.escuelajs.co/api/v1/products/"));
      if (response.statusCode == 200) {
        List data = jsonDecode(response.body);
        products = data.map((e) => ProductsModel.fromJson(e)).toList();
      }
    } catch (ex) {
      print(ex);
    } finally {
      return products;
    }
  }
}
