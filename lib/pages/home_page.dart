import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  final int days = 30;
  final String name = "Divyanshu Gupta";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "Welcome to $days days of flutter by $name \n ${context.runtimeType.toString()}"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}





// Container(
      //   constraints: BoxConstraints(
      //     minHeight: 70,
      //     maxHeight: 200,
      //     minWidth: 70,
      //     maxWidth: 200,
      //   ),
      //   child: Container(
      //     height: 73,
      //     width: 12,
      //     color: Colors.red,
      //   ),
      // ),