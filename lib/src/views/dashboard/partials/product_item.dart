import 'package:ecommerce/src/models/product.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final Product _product;
  ProductItem(this._product);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          margin: EdgeInsets.only(left: 10, right: 10, top: 10),
          elevation: 8,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          semanticContainer: true,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Container(
            child: Stack(children: <Widget>[
              Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: <Widget>[
                          Image.asset(
                            'assets/imgs/product/${_product.image}',
                            fit: BoxFit.fill,
                          ),
                        ],
                      ))),
              Positioned(
                  top: 50,
                  left: 0,
                  right: 0,
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Text(_product.name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                            textAlign: TextAlign.center),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'ADD TO CART',
                            style: TextStyle(fontSize: 10),
                          ),
                        )
                      ],
                    ),
                  )),
            ]),
          )),
    );
  }
}
