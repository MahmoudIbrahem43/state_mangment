import 'package:flutter/material.dart';
import 'package:state_mangment/product.dart';
import 'package:collection/collection.dart';

//provider state mangment..
class ShoppingCart extends InheritedWidget {
  List<Product> products = [];
  Widget child;
  ShoppingCart({this.child});

  @override
  bool updateShouldNotify(ShoppingCart oldWidget) {
    return !IterableEquality().equals(products, oldWidget.products);
  }
 static ShoppingCart of(BuildContext context)=> context.dependOnInheritedWidgetOfExactType();

}