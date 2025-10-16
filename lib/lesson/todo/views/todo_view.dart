import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:summer_flutter/lesson/todo/provider/todo_provider.dart';

class TodoView extends StatefulWidget {
  const TodoView({super.key});

  @override
  State<TodoView> createState() => _TodoViewState();
}

class _TodoViewState extends State<TodoView> {
  final controller = TextEditingController();

  @override
  void initState() {
    Future.microtask(
      () => Provider.of<TodoProvider>(
        context,
        listen: false,
      ).loadTodos(),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<TodoProvider>(
      builder: (context, prov, _) {
        return Scaffold(
          appBar: AppBar(title: Text('Todo')),
          body: prov.isLoading
              ? Center(child: CircularProgressIndicator())
              : ListView.builder(
                  itemCount: prov.todo.length,
                  itemBuilder: (context, index) {
                    final todo = prov.todo[index];
                    return ListTile(
                      leading: Checkbox(
                        value: todo.isCompleted,
                        onChanged: (value) {
                          prov.toggleTodo(todo.id);
                        },
                      ),
                      title: Text(
                        todo.title,
                        style: TextStyle(
                          decoration: todo.isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      trailing: IconButton(
                        onPressed: () {
                          prov.deleteTodo(todo.id);
                        },
                        icon: Icon(Icons.delete),
                      ),
                    );
                  },
                ),
          bottomNavigationBar: Container(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 16,
            ),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                    onEditingComplete: () {
                      prov.addTodo(controller.text);
                      controller.clear();
                    },
                    decoration: InputDecoration(
                      hintText: 'Add a new todo',
                    ),
                  ),
                ),
                Gap(10),
                IconButton(
                  onPressed: () {
                    prov.addTodo(controller.text);
                    controller.clear();
                  },
                  icon: Icon(Icons.add),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
