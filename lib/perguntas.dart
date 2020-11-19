import 'package:flutter/material.dart';

class Perguntas extends StatelessWidget {
  final String texto;

  Perguntas(this.texto);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Column(
        children: [
          Card(
            color: Colors.blueGrey,
            shadowColor: Colors.brown,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.all(32),
              child: Text(
                texto,
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
