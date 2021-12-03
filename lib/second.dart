import 'package:flutter/material.dart';
import 'package:state_mangment/counter_provider.dart';

class Second extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    var p = CounterProvider.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text('inherted widget'),
          actions: [],
        ),
        body: Center(
          child: StatefulBuilder(
            builder: (context, StateSetter setState) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    '${p.counter}',
                    style: Theme.of(context).textTheme.display1,
                  ),
                  IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        setState((){
                          p.counter++;
                        });
                      }

                  )
                ],
              );
            },
          ),
        ));
  }
}
