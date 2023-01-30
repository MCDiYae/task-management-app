import 'package:flutter/material.dart';
import 'package:taskapp/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ViewBody(),
      backgroundColor: backColor1,
    );
  }
}

class AppBarView extends StatelessWidget {
  const AppBarView({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ],
    );
  }
}

class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Padding(
          padding: EdgeInsets.all(20.0),
          child: AppBarView(title: "TaskApp"),
        ),
      ],
    );
  }
}
