import 'package:ecommerce/src/blocs/product_bloc.dart';
import 'package:ecommerce/src/models/product.dart';
import 'package:ecommerce/src/providers/product_provider.dart';
import 'package:ecommerce/src/views/dashboard/partials/product_item.dart';
import 'package:flutter/material.dart';

class ProductCollection extends StatelessWidget {
  final String productTag;

  ProductCollection(this.productTag);
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = ProductProvider.of(context);
    bloc.fetchProductList(productTag);
    return StreamBuilder(
      stream: bloc.productListStream,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return buildList(snapshot.data.data);
        }
      },
    );
  }

  buildList(List<Product> _products) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          child: Text(
            _products[0].category,
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          height: 400,
          child: GridView.builder(
            itemCount: _products.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 2 / 1.8,
            ),
            itemBuilder: (context, index) {
              return ProductItem(_products[index]);
            },
          ),
        )
      ],
    );
  }
}
