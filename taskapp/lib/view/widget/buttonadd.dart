import 'package:flutter/material.dart';

import '../../constant.dart';

class BoutonAdd extends StatelessWidget {
  const BoutonAdd({super.key, required this.titre, this.onPressed});
  final String titre;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        // style: ElevatedButton.styleFrom(backgroundColor: pPremuimColor),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.red),
        ),
        child: Text(
          titre,
          style: const TextStyle(fontSize: 24, color: pWriteColor1),
        ),
      ),
    );
  }
}
