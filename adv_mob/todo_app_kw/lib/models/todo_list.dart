// this is my state object 
import 'dart:collection';

import 'package:flutter/widgets.dart';
import './todo.dart';

class TodoList extends ChangeNotifier {

  final List<Todo> _todos = [
    Todo(name: 'Get Food', description: "Stand in front of fridge for 10 mins and decide I don't want anything in there"),
    Todo(name: 'Solve world hunger', description: "Don't use fridge"),
    Todo(name: 'Catch the fridge', description: 'We are going to need a bigger boat'),
    Todo(name: 'Catch', description: 'We are going to play baseball',
    complete: true,

    ), 
  ];

  UnmodifiableListView<Todo> get todos => UnmodifiableListView(_todos);

  int get todoCount => _todos.length;


  void add(Todo todo){
    _todos.add(todo);  
    notifyListeners(); // calling change notifiers notify listeners will anyone listening to object state
    // to know something has been updated and might need reflected (or redrawn) on the UI.
  }
 
  void remove(Todo todo){
    _todos.remove(todo);
    notifyListeners(); 
  }

 void removeAll(){
    _todos.clear();
    notifyListeners();
    // might never use this?
  }

  void updateTodo(Todo todo){
    Todo listTodo = _todos.firstWhere(
      (t) => t.name == todo.name // this works but name isn't reliable 
      ); 

    int index = _todos.indexOf(listTodo); // We don't have id or an identifier (yet)
    _todos[index] = todo;   
    notifyListeners(); 

  }
  

}