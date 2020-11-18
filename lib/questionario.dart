import 'package:flutter/material.dart';
import 'package:quest_lgpd/respostas.dart';
import 'package:quest_lgpd/perguntas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  Questionario({
    @required this.perguntas,
    @required this.perguntaSelecionada,
    @required this.quandoResponder,
  });

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada]['respostas']
        : null;
    return Center(
      child: Column(
        children: <Widget>[
          Perguntas(
            perguntas[perguntaSelecionada]['texto'],
          ),
          ...respostas.map((resp) {
            return Respostas(
              resp['texto'],
              () => quandoResponder(resp['score']),
              resp['cor'],
            );
          }).toList(),
        ],
      ),
    );
  }
}
