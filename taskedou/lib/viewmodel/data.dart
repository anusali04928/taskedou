import 'package:flutter/foundation.dart';
import 'package:provider/provider.dart';
import 'package:taskedou/models/tasks.dart';

class TasksViewModel extends ChangeNotifier {
  final List<Task> _tasks = [];
 

  List<Task> get tasks => _tasks;

  bool onclick = false;

  void addTask(String taskName) {
    _tasks.add(Task(taskName));
    notifyListeners();
  }

  void addList(String taskName) {
    _tasks.add(Task(taskName));
    notifyListeners();
  }

  void enabled() {
    onclick = onclick ? false : true;
    notifyListeners();
  }

  void updateTask(int index, String taskName) {
    _tasks[index].name = taskName;
    notifyListeners();
  }

  void toggleTask(int index) {
    _tasks[index].toggleDone();

    notifyListeners();
  }

  void removeTask(int index) {
    _tasks.removeAt(index);
    notifyListeners();
  }
}
