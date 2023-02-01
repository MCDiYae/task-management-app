import 'package:flutter/material.dart';
import 'package:taskapp/view/widget/appbarview.dart';
import 'package:taskapp/view/widget/tablecalendarform.dart';
import '../constant.dart';

class ViewBody extends StatelessWidget {
  const ViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        AppBarView(title: titel1),
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 15,
        ),
        TableCalendarForm(),
      ],
    );
  }
}
