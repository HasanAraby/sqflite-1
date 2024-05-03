import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sql_app/Model/Constant.dart';
import 'package:path_provider/path_provider.dart';

class Sql{
  Sql._();
  static final Sql _x=Sql._();
  factory Sql(){
    return _x;
  }

  Database _database;

  Future<Database> get x async{
    if(_database!=null)return _database;
    _database=await initDB();
    return _database;
  }

  initDB()async{
    Directory d=await getApplicationDocumentsDirectory();
    String path=d.path+'Tasks';
    final tasklist=await openDatabase(path,version: 1,onCreate: _onCreate);
    return tasklist;
  }

  void _onCreate(Database x,int version)async
  {
    await x.execute(
      '''CREATE TABLE TASKS
      (
      $taskId INTEGER PRIMARY KEY AUTOINCREMENT,
      $taskTitle TEXT
      )
      '''
    );
  }

}