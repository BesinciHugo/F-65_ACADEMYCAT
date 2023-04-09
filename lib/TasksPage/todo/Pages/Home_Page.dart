import 'package:f65jamapp/StarterPage/mainPage.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../data/dataBase.dart';
import 'ToDoList.dart';
import 'taskAddBox.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.youtube.com/shorts/Ix2KXqSMsTQ');



class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final _myBox = Hive.box('mybox');
  ToDoDataBase db = ToDoDataBase();


  @override
  void initState(){
    if (_myBox.get("TODOLIST") == null) {
      db.createInitialData();
    }else {
      db.loadData();
    }
    super.initState();
  }


  final _controller = TextEditingController();

  void checkBoxChange(bool? value, int index) {
    setState(() {
      db.toDoList[index][1] = !db.toDoList[index][1];
    });
    db.updateDataBase();
  }

  void createNewTask () {
    showDialog(
        context: context,
        builder: (context) {
          return DialogBox(
            controller: _controller ,
            onSave: saveNewTask,
            onCancel: () => Navigator.of(context).pop(),
          );
        }
    );
    db.updateDataBase();
  }

  void deleteTask(int index) {
    setState(() {
      db.toDoList.removeAt(index);
    });
    db.updateDataBase();
  }


  void saveNewTask() {
    setState(() {
      db.toDoList.add([_controller.text, false]);
      _controller.clear();
    });
    db.updateDataBase();
    Navigator.of(context).pop();
  }



  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255 , 1) ,
      appBar: AppBar(

        backgroundColor: Color.fromRGBO(210,19,18, 1),
        title:Text("ACADEMYCAT GOREVLERIM", style: GoogleFonts.dancingScript(fontSize: 21),),
        actions: [
          IconButton(onPressed: _launchUrl, icon: Icon(Icons.sports_mma))
        ],
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: db.toDoList.length,
          itemBuilder: (context, index){
            return ToDoList(
              taskName: db.toDoList[index][0],
              taskCompleted: db.toDoList[index][1],
              onChanged: (value) => checkBoxChange(value, index),
              deleteFunction: (context) => deleteTask(index),
            );
          }
      ),
        floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => mainPage()),
              );
            },
            child: Icon(Icons.home),
            heroTag: "Ana sayfa",
            backgroundColor: Color.fromRGBO(241,90,89, 1),

          ),
          FloatingActionButton(
            onPressed: createNewTask,
            child: Icon(Icons.add),
            heroTag: "Gorev ekle",
            backgroundColor : Color.fromRGBO(241,90,89, 1)
          ),
        ]
    )
    );
  }
}

Future<void> _launchUrl() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}