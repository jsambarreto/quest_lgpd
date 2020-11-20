import 'package:flutter/material.dart';
import 'package:quest_lgpd/main.dart';

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

  int get corLetra {
    if (score < 20) {
      return 0xff990000;
    } else if (score < 35) {
      return 0xffcccc00;
    } else {
      return 0xff004c99;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 2, 10, 0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              fraseResultado,
              style: TextStyle(
                fontSize: 40,
                color: Color(corLetra),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(corLetra),
            textColor: Colors.white,
            child: Text(
              'Reiniciar ?',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: quandoReiniciarQuestionario,
          ),
          RaisedButton(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            color: Color(corLetra),
            textColor: Colors.white,
            child: Text(
              'Voltar para a página principal',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Qlgpd()),
              );
            },
          ),
        ],
      ),
    );
  }
}
