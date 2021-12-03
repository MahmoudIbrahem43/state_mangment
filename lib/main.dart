
import 'package:flutter/material.dart';
import 'package:state_mangment/shoppingCart.dart';

import 'home.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShoppingCart(
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    );
  }
}

























// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return CounterProvider(
//       child: MaterialApp(
//         home: Home(),
//       ),
//     );
//
//   }
// }



















// class Home extends StatelessWidget {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('State Mangment'),
//       ),
//       body: Center(
//         child: myCounter(context),
//       ),
//     );
//   }
//
//   Widget myCounter(BuildContext context) {
//     return
//     StatefulBuilder
//     (builder: (context, StateSetter setState) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.spaceAround,
//         children: <Widget>[
//           IconButton(
//             icon: Icon(
//               Icons.remove,
//               size: 50,
//               color: Colors.red,
//             ),
//             onPressed: () {
//               setState(() {
//                 counter--;
//               });
//             },
//           ),
//           Text(
//             '$counter',
//             style: TextStyle(fontSize: 35),
//           ),
//           IconButton(
//             icon: Icon(
//               Icons.add,
//               size: 50,
//               color: Colors.red,
//             ),
//             onPressed: () {
//               setState(() {
//                 counter++;
//               });
//             },
//           )
//         ],
//       );
//     });
//   }
// }

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }
//
// class _HomeState extends State<Home> {
//   int counter = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('State Mangment'),
//       ),
//       body: Center(
//         child:
//
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             IconButton(
//               icon: Icon(
//                 Icons.remove,
//                 size: 50,
//                 color: Colors.red,
//               ),
//               onPressed: () {
//                 setState(() {
//                   counter--;
//                 });
//               },
//             ),
//             Text(
//               '$counter',
//               style: TextStyle(fontSize: 35),
//             ),
//             IconButton(
//               icon: Icon(
//                 Icons.add,
//                 size: 50,
//                 color: Colors.red,
//               ),
//               onPressed: () {
//                 setState(() {
//                   counter++;
//                 });
//               },
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
