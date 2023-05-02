import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:taskedou/models/theme.dart';
import 'package:taskedou/viewmodel/data.dart';
import 'package:taskedou/views/taskview.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TasksViewModel(),
      child: MaterialApp(
        title: 'Tasks App',
        theme: MyTheme.darkTheme,
        home: TasksView(),
      ),
    );
  }
}
