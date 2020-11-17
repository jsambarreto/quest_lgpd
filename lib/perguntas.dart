import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget {
  final String texto;

  Perguntas(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 24,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
