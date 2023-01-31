
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskapp/view/widget/appbarview.dart';

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
        CurrentDateInfo(),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }
}
class CurrentDateInfo extends StatelessWidget {
  const CurrentDateInfo({super.key});

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    var formatter = DateFormat('dd-MM-yyyy');
    var formattedDate = formatter.format(now);
    var dayOfWeek = DateFormat("EEEE").format(now);
    return Text('$formattedDate ($dayOfWeek)');
  }
}
