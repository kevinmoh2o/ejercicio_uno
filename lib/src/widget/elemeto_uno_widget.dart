import 'package:flutter/material.dart';

class ElementoUnoW extends StatelessWidget {
  final Icon icon;
  final String texto;

  const ElementoUnoW({super.key, required this.icon, required this.texto});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
              child: icon),
          Text(texto),
        ],
      ),
    );
  }
}
