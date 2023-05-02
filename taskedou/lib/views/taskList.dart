import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskedou/models/theme.dart';
import 'package:taskedou/viewmodel/data.dart';

class TaskList extends StatelessWidget {
  TaskList({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  List<Color> color = [
    Color(0xffFFA656),
    Color(0xffFD5B71),
    Color(0xff07E092),
    Color(0xff9B51E0),
  ];

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksViewModel>(builder: (context, tasksViewModel, child) {
      return Expanded(
        child: ListView.builder(
          itemCount: tasksViewModel.tasks.length,
          itemBuilder: (context, index) {
            final task = tasksViewModel.tasks[index % 4];

            return Container(
              decoration: BoxDecoration(
                  border: Border.all(color: color[index % 3]),
                  color: color[index].withOpacity(0.05),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: const [
                    BoxShadow(color: Color.fromARGB(31, 241, 239, 239))
                  ]),
              padding: const EdgeInsets.all(10),
              margin: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05, vertical: size.height * 0.01),
              height: size.height * 0.1,
              child: Text(
                task.name,
                style: const TextStyle(fontSize: 18, color: Colors.white),
              ),
            );
          },
        ),
      );
    });
  }
}
