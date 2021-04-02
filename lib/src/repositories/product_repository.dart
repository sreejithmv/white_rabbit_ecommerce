import 'package:ecommerce/config/constants.dart';
import 'package:ecommerce/src/api/api_base_helper.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:flutter/material.dart';

class ProductRepository {
  ApiBaseHelper _helper = ApiBaseHelper();

  Future<List<Product>> fetchProductList({@required String productTag}) async {
    final response = await _helper.get(Constants.apiBaseUrl + productTag);
    final reponseObj =
        List<Product>.from(response.map((x) => Product.fromJson(x)));
    return reponseObj;
  }
}
