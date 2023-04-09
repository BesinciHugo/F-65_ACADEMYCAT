import 'package:hive/hive.dart';

class ToDoDataBase {

  List toDoList = [];

  final _myBox = Hive.box("myBox");

  void createInitialData(){
    toDoList = [
      ["Gorevler altta bulunan '+' butonuyla eklenir segili Bursiyer", false],
      ["Eger bir Gorev silmek istersen sadece sola kaydir!!", false],
      ["Bitirdigin ama silmeye kiyamadigin bir gorevin varsa, yanindaki kutucugu kullan!", false]
    ];
  }

  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  void updateDataBase() {
    _myBox.put("TODOLIST",toDoList);
  }
}