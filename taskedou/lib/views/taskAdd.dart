import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskedou/models/theme.dart';
import 'package:taskedou/viewmodel/data.dart';

class TaskAdd extends StatelessWidget {
  const TaskAdd({
    Key? key,
    required this.size,
    required TextEditingController textEditingController,
  })  : _textEditingController = textEditingController,
        super(key: key);

  final Size size;
  final TextEditingController _textEditingController;

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksViewModel>(builder: (context, tasksViewModel, child) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 1),
            curve: Curves.easeInOut,
            width: tasksViewModel.onclick ? size.width * 0.8 : size.width * 0,
            child: TextField(
              controller: _textEditingController,
              autofocus: true,
              decoration: const InputDecoration(
                hintText: 'e.g. Buy Milk',
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(16.0),
                backgroundColor: MyTheme.icon1),
            child: tasksViewModel.onclick
                ? const Icon(Icons.arrow_upward)
                : const Icon(Icons.add),
            onPressed: () {
              if (_textEditingController.text == '') {
                tasksViewModel.enabled();
              } else {
                tasksViewModel.addTask(_textEditingController.text);
                _textEditingController.text = '';
              }
            },
          )
        ],
      );
    });
  }
}
