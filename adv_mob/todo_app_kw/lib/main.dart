import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/todo_list.dart';
import '../views/todo_widget.dart';
import './models/todo.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (context) => TodoList(),
      child: const TodoApp(),
      ),
    ); 
}
class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo App',
      theme: ThemeData(
        
        colorScheme: .fromSeed(seedColor: Colors.cyan),
      ),
      home: TodoHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TodoHomePage extends StatefulWidget {
  const TodoHomePage({super.key});

  @override
  State<TodoHomePage> createState() => _TodoHomePageState();
}

class _TodoHomePageState extends State<TodoHomePage> { 

  final TextEditingController _controllerName = TextEditingController(); 
  final TextEditingController _controllerDescription = TextEditingController(); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          spacing: 10,
          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Tasks')),
            Divider(), 
            ElevatedButton(onPressed: () {}, child: const Text('Home')),
            Divider(), 
            ElevatedButton(onPressed: () {}, child: const Text('Support')),
            Divider(), 
            ElevatedButton(onPressed: () {}, child: const Text('About')),
          ]
          .map(
            (item) => Padding(padding: EdgeInsetsGeometry.all(15), child: item,
            ),)
            .toList(),
        ),
      ),
      appBar: AppBar(
        title: Text('My Fancy Todo App'),
        backgroundColor: Theme.of(context).primaryColorLight,
        actions: [
          ElevatedButton(onPressed: (){} ,
           child: Icon(Icons.exit_to_app))
          ],
        ),
        body: Center(
          child: Consumer<TodoList>(
            builder: (BuildContext context, TodoList stateObject, Widget? child) {
              return ListView.builder(
              itemCount: stateObject.todos.length,
              itemBuilder: (context, index) {
                return TodoWidget(todo: stateObject.todos[index]);
              },
              );
            },
            
          ),
                  
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _openAddTodo,
          child:Icon(Icons.add),
      ),
      );
        
    
  }

  void _openAddTodo(){
    showDialog(context: context, builder: (context) {
      return AlertDialog(
        actions: [
          ElevatedButton(onPressed: (){
                setState(() {
                  Provider.of<TodoList>(context, listen: false).add(
                    Todo(
                      name: _controllerName.text,
                      description: _controllerDescription.text
                    ),
                  );
                   
                });
                Navigator.pop(context); 
                _controllerName.clear();
                _controllerDescription.clear();
              },
              child: const Text('Add')),
              // Cancel button
              ElevatedButton(
                onPressed: (){
                Navigator.pop(context); 
                _controllerName.clear();
                _controllerDescription.clear();
              },
              child: const Text('Cancel')),
              ],
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(5, 8, 5, 0),
              child: Text('Name'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 8, 5, 0),
              child: TextFormField(controller: _controllerName),),
            Padding(
              padding: EdgeInsetsGeometry.fromLTRB(5, 8, 5, 0),
              child: Text('Description'),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(5, 8, 5, 0),
              child: TextFormField(controller: _controllerDescription),
              ),
              //Divider(color: Colors.transparent,),
              SizedBox(height: MediaQuery.of(context).size.height * 0.05,),              
            ],

          ),
        );
      },
    );
  }

}
