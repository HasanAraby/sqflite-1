import 'package:sql_app/Model/Constant.dart';
class Task{
  int id;
  String title;
  String importance;
  String date;
  String desc;
  String status;

  Task({this.id,this.status,this.title,this.date,this.desc,this.importance});

  toJson()
  {
    return{
      taskId:id,
      taskTitle:title,
      taskIm:importance,
      taskdesc:desc,
      taskStatus:status,
      taskDate:date,

    };
  }


}