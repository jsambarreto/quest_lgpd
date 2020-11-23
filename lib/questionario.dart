import 'package:flutter/material.dart';
import 'package:quest_lgpd/comentarios.dart';
import 'package:quest_lgpd/respostas.dart';
import 'package:quest_lgpd/perguntas.dart';

class Questionario extends StatelessWidget {
  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int, String, String, int, int) quandoResponder;

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
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Perguntas(
              id_pergunta: perguntas[perguntaSelecionada]['id_pergunta'],
              texto: perguntas[perguntaSelecionada]['texto'],
            ),
            ...respostas.map((resp) {
              return Respostas(
                id_resposta: resp['id_resposta'],
                texto: resp['textoResposta'],
                funcao: () => quandoResponder(
                  resp['score'],
                  resp['textoResposta'],
                  resp['comentarioResposta'],
                  perguntas[perguntaSelecionada]['id_pergunta'],
                  resp['id_resposta'],
                ),
                cores: resp['cor'],
              );
            }).toList(),
            Comentario(
              perguntas[perguntaSelecionada]['comentarioPergunta'],
            )
          ],
        ),
      ),
    );
  }
}
