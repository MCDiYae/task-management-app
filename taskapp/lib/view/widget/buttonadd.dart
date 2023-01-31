import 'package:flutter/material.dart';

import '../../constant.dart';

class BoutonAdd extends StatelessWidget {
  const BoutonAdd({super.key, required this.titre, this.onPressed});
  final String titre;
  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(5),
      width: double.infinity,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(pPremuimColor),
        ),
        child: Text(
          titre,
          style: const TextStyle(fontSize: 24, color: pWriteColor1),
        ),
      ),
    );
  }
}
