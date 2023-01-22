import 'package:flutter/material.dart';
import 'package:taskapp/view/homeview.dart';

void main() {
  runApp(const TaskApp());
}
class TaskApp extends StatelessWidget {
  const TaskApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),

    );
  }
}