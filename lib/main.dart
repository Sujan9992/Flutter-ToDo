import 'package:flutter/material.dart';
import 'package:todo/model/taskData.dart';
import 'package:todo/screen/homescreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (BuildContext context) => TaskData(),
      child: MaterialApp(
        home: HomeScreen(),
      ),
    );
  }
}
