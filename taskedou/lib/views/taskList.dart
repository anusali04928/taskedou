import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
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
            scrollDirection: Axis.horizontal,
            itemCount: 4,
            itemBuilder: (context, index1) {
              if (index1 == 3) {
                return Container(
                  width: size.width * 0.95,
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateColor.resolveWith(
                              (states) => Colors.transparent)),
                      onPressed: () {

                        


                      },
                      child: Container(
                        decoration: const BoxDecoration(shape: BoxShape.circle),
                        height: size.height * 0.1,
                        child: Column(
                          children: [
                            Icon(
                              Icons.add_card,
                              size: size.height * 0.05,
                              color: MyTheme.color4,
                            ),
                            const Text(
                              'Add a list',
                              style: TextStyle(
                                  fontSize: 22, color: MyTheme.color4),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              } else {
                return Container(
                  margin: const EdgeInsets.all(10),
                  height: size.height * 0.2,
                  width: size.width * 0.95,
                  child: Expanded(
                    child: ListView.builder(
                      itemCount: tasksViewModel.tasks.length,
                      itemBuilder: (context, index) {
                        final task = tasksViewModel.tasks[index];
                        return Slidable(
                          key: UniqueKey(),
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            dismissible: DismissiblePane(onDismissed: () {
                              tasksViewModel.toggleTask(index);
                            }),
                            children: [
                              SlidableAction(
                                onPressed: (context) {},
                                backgroundColor:
                                    const Color.fromARGB(255, 37, 242, 126)
                                        .withOpacity(0.3),
                                foregroundColor: const Color(0xFFDEDCDC),
                                icon: Icons.check,
                                label: 'Done',
                              ),
                            ],
                          ),
                          startActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            dismissible: DismissiblePane(onDismissed: () {
                              tasksViewModel.removeTask(index);
                            }),
                            children: [
                              SlidableAction(
                                onPressed: (context) {},
                                backgroundColor:
                                    const Color(0xFFFE4A49).withOpacity(0.3),
                                foregroundColor: Color(0xFFDEDCDC),
                                icon: Icons.delete,
                                label: 'Delete',
                              ),
                            ],
                          ),
                          child: Container(
                            decoration: BoxDecoration(
                                border: Border.all(color: color[index % 4]),
                                color: color[index % 4].withOpacity(0.05),
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: const [
                                  BoxShadow(
                                      color: Color.fromARGB(31, 241, 239, 239))
                                ]),
                            padding: const EdgeInsets.all(10),
                            margin: EdgeInsets.symmetric(
                                horizontal: size.width * 0.05,
                                vertical: size.height * 0.01),
                            height: size.height * 0.1,
                            width: size.width * 0.9,
                            child: Center(
                              child: Text(
                                task.name,
                                style: const TextStyle(
                                    fontSize: 22, color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                );
              }
            }),
      );
    });
  }
}
