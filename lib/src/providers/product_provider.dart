import 'package:ecommerce/src/blocs/product_bloc.dart';
import 'package:flutter/material.dart';

class ProductProvider extends InheritedWidget {
  final ProductBloc bloc;

  ProductProvider({Key key, this.child})
      : bloc = ProductBloc(),
        super(key: key, child: child);

  final Widget child;

  static ProductBloc of(BuildContext context) {
    return (context.dependOnInheritedWidgetOfExactType<ProductProvider>(
            aspect: ProductProvider))
        .bloc;
  }

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw true;
  }
}
