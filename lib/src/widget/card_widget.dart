import 'package:flutter/material.dart';
import 'package:prueba_uno/src/models/maquinaria_models.dart';
import 'package:prueba_uno/src/widget/elemeto_uno_widget.dart';

class CardW extends StatelessWidget {
  final MaquinaModel model;

  const CardW({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      padding: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.green.withAlpha(100)
      ),
      child: Column(
        children: [
          ElementoUnoW(icon: Icon(Icons.key, color: Colors.green), texto: model.codigoSap),
          ElementoUnoW(icon: Icon(Icons.description, color: Colors.green), texto: model.descripcion),
          ElementoUnoW(icon: Icon(Icons.numbers, color: Colors.green), texto: model.diasTaller.toString()),
          ElementoUnoW(icon: Icon(Icons.agriculture, color: Colors.green), texto: model.nroAviso),
        ],
      ),
    );
  }
}
