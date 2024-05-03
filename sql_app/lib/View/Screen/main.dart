import 'package:flutter/material.dart';
import 'package:sql_app/View/Screen/AddTask.dart';
import 'package:sql_app/View/Screen/HomeScreen.dart';

void main() {
  runApp(Sql());
}

class Sql extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      initialRoute:  HomeScreen.id,

      routes: {
        AddTask.id: (context) => AddTask(),
        HomeScreen.id:(context)=>HomeScreen(),
      },
    );
  }
}


