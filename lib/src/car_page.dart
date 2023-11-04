import 'package:flutter/material.dart';
import 'package:flutter_workshop_navegacion/src/todo_detail_page.dart';

class CarPage extends StatelessWidget {
  const CarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  Widget _tabCar() {
    return Center(
      child: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
              title: Text(todos[index].title),
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => TodoDetail(todos: todos[index])));
              });
        },
      ),
    );
  }
}
class ToDo {
  final String title;
  final String description;
  const ToDo(this.title, this.description);
}

final todos = List.generate(20, (i) => ToDo('ToDo $i', 'Descripcion'));

