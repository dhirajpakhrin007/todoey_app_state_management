import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey_flutter/model/task.dart';

class MyTask extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: "Warmup Beatboxing"),
    Task(name: "Learn Investment"),
    Task(name: "Practice coding"),
  ];

  int get countTask {
    return _tasks.length;
  }

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  void addTask(String newTaskTitle) {
    final title = Task(name: newTaskTitle);
    _tasks.add(title);
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleCheckbox();
    notifyListeners();
  }

  void deleteTask(int index) {
    _tasks.remove(_tasks[index]);
    notifyListeners();
  }
}
