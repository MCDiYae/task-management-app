import 'package:flutter/material.dart';
import '../../constant.dart';

class AppBarView extends StatelessWidget {
  const AppBarView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(title),
      backgroundColor: pPremuimColor,
    );
  }
}
