import 'package:flutter/material.dart';

class AlertaNegativo extends StatelessWidget {
  final String texto;

  AlertaNegativo(this.texto);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text('Alerta'),
      content: Column(
        children: [
          Card(
            color: Colors.blueGrey,
            shadowColor: Colors.brown,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Container(
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
