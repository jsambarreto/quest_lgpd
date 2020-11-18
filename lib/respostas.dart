import 'package:flutter/material.dart';

class Respostas extends StatelessWidget {
  final String texto;
  final Function funcao;
  final int cores;

  Respostas(this.texto, this.funcao, this.cores);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 2, 10, 0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        color: Color(cores),
        textColor: Colors.white,
        child: Text(
          texto,
          style: TextStyle(
            fontSize: 18,
          ),
        ),
        onPressed: funcao,
      ),
    );
  }
}
