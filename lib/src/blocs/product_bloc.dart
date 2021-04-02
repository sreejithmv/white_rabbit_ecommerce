import 'dart:async';

import 'package:ecommerce/src/api/api_response.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/repositories/product_repository.dart';

class ProductBloc {
  ProductRepository _productRepository;

  StreamController _productListController;

  StreamSink<ApiResponse<List<Product>>> get productListSink =>
      _productListController.sink;

  Stream<ApiResponse<List<Product>>> get productListStream =>
      _productListController.stream;

  ProductBloc() {
    _productListController = StreamController<ApiResponse<List<Product>>>();
    _productRepository = ProductRepository();
  }

  fetchProductList(String productTag) async {
    // productListSink.add(ApiResponse.loading('Fetching Dashbard Items'));
    try {
      List<Product> dashboard =
          await _productRepository.fetchProductList(productTag: productTag);
      productListSink.add(ApiResponse.completed(dashboard));
    } catch (e) {
      productListSink.add(ApiResponse.error(e.toString()));
      print(e);
    }
  }

  dispose() {
    _productListController?.close();
  }
}
