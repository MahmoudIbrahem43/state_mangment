import 'package:flutter/material.dart';
import 'package:state_mangment/shoppingCart.dart';



class CardDetails extends StatelessWidget {
  const CardDetails({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = ShoppingCart.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Card Details'),
      ),
      body:Center(
        child: Text('${cart.products.length} selected', style: Theme.of(context).textTheme.display1,),
      ) ,
    );
  }
}
