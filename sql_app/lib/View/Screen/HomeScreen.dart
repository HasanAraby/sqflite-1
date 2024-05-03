import 'package:flutter/material.dart';
import 'package:sql_app/View/Screen/AddTask.dart';

class HomeScreen extends StatefulWidget {
  static String id='HomeScreen';
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.pushNamed(context, AddTask.id);
        },
        backgroundColor: Colors.yellow,
        child: Icon(Icons.add),
      ),
    );
  }
}
