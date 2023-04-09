import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class ToDoList extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?) ? onChanged;
  Function(BuildContext)? deleteFunction;

  ToDoList({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: const EdgeInsets.all(10.0),
        child: Slidable(
          endActionPane: ActionPane(
            motion: StretchMotion(),
            children: [
              SlidableAction(
                onPressed: deleteFunction,
                icon: Icons.delete,
                backgroundColor: Color.fromRGBO(51, 44, 57, 1),
                borderRadius: BorderRadius.circular(10),

              )
            ],
          ),
          child: Container(
            padding: EdgeInsets.all(24),
            child: Row(

              children: [

                Checkbox(value: taskCompleted, onChanged: onChanged,checkColor: Color.fromRGBO(244, 180, 0, 1),activeColor: Color.fromRGBO(255 , 255 , 255, 1)),

                Expanded(child: Text(taskName, style: TextStyle(color: Colors.white,decoration: taskCompleted ? TextDecoration.lineThrough : TextDecoration.none))),
              ],

            ),
            decoration:BoxDecoration(
                color: Color.fromRGBO(210,19,18, 1),
                borderRadius: BorderRadius.circular(12)
            ),
          ),
        )
    );
  }
}