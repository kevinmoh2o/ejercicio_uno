import 'package:flutter/material.dart';
import 'package:prueba_uno/src/models/maquinaria_models.dart';
import 'package:prueba_uno/src/widget/card_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    List<MaquinaModel> maquinas = [
      MaquinaModel(
        codigoSap: "CODIGO1",
        descripcion: "Descripción 1",
        diasTaller: 3,
        nroAviso: "Aviso 123",
      ),
      MaquinaModel(
        codigoSap: "CODIGO2",
        descripcion: "Descripción 2",
        diasTaller: 5,
        nroAviso: "Aviso 456",
      ),
      MaquinaModel(
        codigoSap: "CODIGO3",
        descripcion: "Descripción 3",
        diasTaller: 2,
        nroAviso: "Aviso 789",
      ),
      MaquinaModel(
        codigoSap: "CODIGO4",
        descripcion: "Descripción 4",
        diasTaller: 1,
        nroAviso: "Aviso 101",
      ),
      MaquinaModel(
        codigoSap: "CODIGO5",
        descripcion: "Descripción 5",
        diasTaller: 7,
        nroAviso: "Aviso 202",
      ),
      MaquinaModel(
        codigoSap: "CODIGO1",
        descripcion: "Descripción 1",
        diasTaller: 3,
        nroAviso: "Aviso 123",
      ),
      MaquinaModel(
        codigoSap: "CODIGO2",
        descripcion: "Descripción 2",
        diasTaller: 5,
        nroAviso: "Aviso 456",
      ),
      MaquinaModel(
        codigoSap: "CODIGO3",
        descripcion: "Descripción 3",
        diasTaller: 2,
        nroAviso: "Aviso 789",
      ),
      MaquinaModel(
        codigoSap: "CODIGO4",
        descripcion: "Descripción 4",
        diasTaller: 1,
        nroAviso: "Aviso 101",
      ),
      MaquinaModel(
        codigoSap: "CODIGO5",
        descripcion: "Descripción 5",
        diasTaller: 7,
        nroAviso: "Aviso 202",
      ),
    ];

    return SafeArea(
      child: Scaffold(
      appBar: AppBar(
        title: const Text(
          "Maquinas",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for (var item in maquinas) ...[
              CardW(
                model: item,
              )
            ]
          ],
        ),
      ),
      floatingActionButton: IconButton(
        onPressed: () {
          debugPrint("Predionando el botton Floating");
        },
        icon: Icon(
          Icons.abc,
          size: 50,
        ),
        color: Colors.red,
      ),
    ));
  }
}
