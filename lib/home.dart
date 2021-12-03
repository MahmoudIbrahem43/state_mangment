import 'dart:math';

import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:state_mangment/product.dart';
import 'package:state_mangment/shoppingCart.dart';

import 'carddetailes.dart';

class Home extends StatelessWidget {

  List<Product> items = List.generate(100, (i) {
    return Product(
        name: 'product $i', price: Random().nextInt(5000), isCheck: false);
  });

  @override
  Widget build(BuildContext context) {

    ShoppingCart cart = ShoppingCart.of(context);
    return StatefulBuilder(
      builder: (context, StateSetter setState) {
        return Scaffold(
          appBar: AppBar(
            title: Text('Shopping Art'),
            actions: <Widget>[
              Container(
                margin: EdgeInsets.only(top: 15, right: 25),
                child: Badge(
                  badgeContent: Text(
                    '${cart.products.length}',
                    style: TextStyle(color: Colors.black),
                  ),
                  child: IconButton(
                    icon: Icon(Icons.shopping_cart),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CardDetails()));
                    },
                  ),
                ),
              )
            ],
          ),
          body: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, i) {
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    title: Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(items[i].name),
                        ),
                        Checkbox(
                          value: items[i].isCheck,
                          onChanged: (value) {
                            setState(() {
                              items[i].isCheck = !items[i].isCheck;
                              if(items[i].isCheck){
                                cart.products.add(items[i]);
                              }else{
                                cart.products.remove(items[i]);
                              }
                            });
                          },
                        )
                      ],
                    ),
                    subtitle: Text('${items[i].price} EGP'),
                  ),
                );
              }),
        );
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:state_mangment/counter_provider.dart';
// import 'package:state_mangment/second.dart';
//
// class Home extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     var provider = CounterProvider.of(context);
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('inherted widget'),
//           actions: [
//             IconButton(
//               icon: Icon(Icons.forward),
//               onPressed: () {
//                 Navigator.push(
//                     context, MaterialPageRoute(builder: (context) => Second()));
//               },
//             )
//           ],
//         ),
//         body: Center(
//           child: StatefulBuilder(
//             builder: (context, StateSetter setState) {
//               return Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   Text(
//                     '${provider.counter}',
//                     style: Theme.of(context).textTheme.display1,
//                   ),
//                   IconButton(
//                       icon: Icon(Icons.add),
//                       onPressed: () {
//                         setState(() {
//                           provider.counter++;
//                         });
//                       })
//                 ],
//               );
//             },
//           ),
//         ));
//   }
// }
