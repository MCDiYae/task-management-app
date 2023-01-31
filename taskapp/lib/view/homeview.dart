import 'package:flutter/material.dart';
import 'package:taskapp/constant.dart';
import 'package:taskapp/view/viewbody.dart';

import 'widget/buttonadd.dart';

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