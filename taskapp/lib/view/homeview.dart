import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:taskapp/constant.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ViewBody(),
      bottomNavigationBar:
          BoutonAdd(titre: boutton1), // POUR LE METTRE A LA FIN DU PAGE
      backgroundColor: backColor1,
    );
  }
}

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

class BoutonAdd extends StatelessWidget {
  const BoutonAdd({super.key, required this.titre, this.onPressed});
  final String titre;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(50),
      padding: EdgeInsets.all(8),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(titre),
      ),
    );
  }
}
