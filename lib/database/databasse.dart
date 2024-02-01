import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

  // reference our box
  final _myBox = Hive.box('My Box');

  //run this method if ever open for the first
  void createInitialData() {
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load the data from the database
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  // update the data to the data base
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
