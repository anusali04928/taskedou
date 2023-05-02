import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskedou/viewmodel/data.dart';
import 'package:taskedou/views/taskAdd.dart';
import 'package:taskedou/views/taskList.dart';

class TasksView extends StatelessWidget {
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text(
            'Taskedou',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: Column(
          children: [
            TaskList(
              size: size,
            ),
            Container(
              margin: EdgeInsets.fromLTRB(
                  size.width * 0.02, 0, 0, size.height * 0.02),
              child: TaskAdd(
                  size: size, textEditingController: _textEditingController),
            ),
          ],
        ));
  }
}
