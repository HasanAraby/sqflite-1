import 'package:flutter/material.dart';
import 'package:sql_app/View/Widget/CustomTextField.dart';
class AddTask extends StatefulWidget {
  static String id='AddTask';
  @override
  _AddTaskState createState() => _AddTaskState();
}

class _AddTaskState extends State<AddTask> {
  GlobalKey<FormState> form=GlobalKey<FormState>();
  int v=0;
  List <String> x=['Low','Midium','High'];
  DateTime date=DateTime.now();
  showDate()async{
    await showDatePicker(context: context, initialDate:date , firstDate: DateTime(2000), lastDate: DateTime(2100));
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: InkWell(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Column(
              children: [
                BackButton(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                ),
                SizedBox(height: MediaQuery.of(context).size.height*.05,),
               Row(
                 children: [
                   SizedBox(width: MediaQuery.of(context).size.width*.05,),
                   Text('Add Task',style: TextStyle(
                     fontSize: 40,fontWeight: FontWeight.bold,
                   ),)
                 ],
               ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  
                    child: Form(
                        key: form,
                        child: Column(
                      children: [
                        CustomTextField(label: 'Add Task',read: false,),
                        CustomTextField(label: 'Task Date',onTap: showDate,read: true,),
                        CustomTextField(label: 'Task Description',lines: 4,read: false,),
                      ],
                    )),
                  
                ),

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                      height: MediaQuery.of(context).size.height*.13,
                      width: MediaQuery.of(context).size.width*.5,
                    child:ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                        itemBuilder: (context,index)
                    {
                      return Column(
                        children: [
                          Radio(
                            fillColor: MaterialStateColor.resolveWith((states) => Colors.red),
                              value: index,
                              groupValue: v,
                              onChanged: (z){
                               setState(() {
                                 v=index;
                               });
                              }
                          ),
                          Text(x[index],style: TextStyle(fontSize: 17,fontWeight: FontWeight.w600),),
                        ],
                      );
                    }) ,
                  ),
                ),

                //SizedBox(height: MediaQuery.of(context).size.height*.05,),
                Container(
                    height: MediaQuery.of(context).size.height*.13 ,
                  width: MediaQuery.of(context).size.width*.5,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(27),
                    color: Colors.red
                  ),
                  child: Center(
                    child: Text('Add Task',style: TextStyle(
                      fontSize: 30,color: Colors.white,
                    ),),
                  ),
                )


              ],
            ),
          ),
        ),
      ),
    );
  }
}
