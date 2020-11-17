import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  final int score;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.score, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (score < 20) {
      return 'Não há adequação a LGPD';
    } else if (score < 35) {
      return 'Existem pontos que precisam ser tratados';
    } else {
      return 'Adequado a LGPD';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(
              fontSize: 40,
              color: Colors.blueAccent,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        RaisedButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text(
            'Reiniciar ?',
            style: TextStyle(
              fontSize: 18,
            ),
          ),
          onPressed: quandoReiniciarQuestionario,
        ),
      ],
    );
  }
}
