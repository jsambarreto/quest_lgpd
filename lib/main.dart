import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quest_lgpd/alertNegativo.dart';

import 'package:quest_lgpd/questionario.dart';
import 'package:quest_lgpd/resultado.dart';

main() => runApp(PerguntaApp());

class _PerguntaAppState extends State<PerguntaApp> {
  var _scoreTotal = 0;

  var _perguntaSelecionada = 0;
  var cores = 0;

  final _perguntas = const [
    {
      'texto': 'Dados pessoais* são utilizados nas atividades de sua empresa?',
      'comentarioPergunta':
          '* O que são dados pessoais: Dado pessoal é qualquer informação relacionada a uma pessoa física, identificada ou identificável. RG, CPF, endereço, data de nascimento são alguns exemplos, mas é muito mais do que isso. Qualquer informação sobre uma pessoa, até mesmo seus gostos, hábitos, localização geográfica etc., pode ser considerada um dado pessoal. Além disso, qualquer tipo de uso de dados pessoais é considerado um "tratamento" e é relevante para a aplicação da lei, – incluindo, mas não se limitando, por exemplo, coleta, registro, armazenamento, organização, consulta, divulgação, compartilhamento, transmissão, classificação, reprodução, processamento e avaliação.',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto':
          'Os motivos para uso dos dados pessoais e a informação do uso está claro para as pessoas?',
      'comentarioPergunta':
          '*Dois dos princípios mais importantes da LGPD são o da transparência e o da finalidade: o titular dos dados deve sempre ser informado de maneira clara e transparente sobre como os dados serão tratados, e precisa saber para que os dados dele serão utilizados – lembrando que autorizações genéricas não são válidas. Meios de informação incluem, por exemplo, políticas de privacidade (no caso de sites) ou avisos específicos em formulários de cadastro, contratos, propostas comerciais, panfletos, placas etc.',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto':
          'São coletados somente os dados necessários para o uso da empresa?',
      'comentarioPergunta':
          'Outro princípio importante da LGPD é o da necessidade: somente devem ser utilizados os dados necessários para determinada finalidade. Por exemplo, se eu tenho uma loja e um cliente deseja realizar uma troca de produto, faz sentido eu solicitar que ele preencha um formulário com o seu telefone e e-mail? Para alguém entrar no estabelecimento tem que fornecer o seu CPF. Isso é realmente necessário? Talvez esses dados não sejam necessários àquela finalidade, mas sim a outras (como, por exemplo, enviar ofertas no primeiro caso ou emissão de nota fiscal no segundo).',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto':
          'O tempo que são guardados os dados é definido pela necessidade do uso dos mesmos?',
      'comentarioPergunta':
          '*Segundo a LGPD, os dados pessoais devem ser armazenados somente pelo tempo que for necessário para cumprir com as finalidades para as quais os coletamos. Por exemplo, faz sentido que uma empresa mantenha em seu cadastro dados de clientes que não entram em contato há mais de cinco anos?',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto': 'Os dados em sua empresa estão guardados de forma segura?',
      'comentarioPergunta':
          '*Para que sua empresa esteja em conformidade com a LGPD, é necessário adotar medidas para proteger a segurança dos dados pessoais. Por exemplo, sua empresa possui armários com chave para documentos físicos importantes? Os computadores possuem antivírus e estão sempre bloqueados por senha? Existe um controle de quem acessa o que nos sistemas e quando as informações são acessadas?',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto':
          'Existe alguma forma de garantia de exercício dos direitos para os titulares dos dados?',
      'comentarioPergunta':
          '*Na LGPD, os titulares têm vários direitos que sua empresa deve permitir que exerçam, de forma gratuita. Esses direitos incluem, por exemplo, solicitar informações à empresa sobre o tratamento de seus dados, corrigir ou excluir seus dados, ter explicações sobre como e para quais finalidades os dados estão sendo tratados, entre outros direitos.',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto':
          'Os usuários externos, como fornecedores, que possuem acesso aos dados, possuem certificações ou garantem a segurança dos mesmos?',
      'comentarioPergunta':
          '*Para estar em conformidade com a LGPD, sua empresa precisa garantir que seus fornecedores e parceiros também estejam em conformidade. Pela lei, sua empresa também pode ser responsabilizada caso as pessoas que são contratadas pela empresa para tratar os dados infrinjam as obrigações previstas na lei.',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    },
    {
      'texto':
          'Sua equipe está ciente das responsabilidades sobre a proteção de dados pessoais?',
      'comentarioPergunta':
          '*As pessoas são sempre o principal fator de risco para proteção de dados. Além de conhecer aspectos práticos sobre direitos dos usuários, é importante que a equipe também esteja preparada para se algo der errado, como, por exemplo, no caso de um incidente de segurança da informação (por exemplo, um vazamento de dados).',
      'respostas': [
        {
          'textoResposta': 'Sim',
          'score': 5,
          'cor': 0xff004c99,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit'
        },
        {
          'textoResposta': 'Não',
          'score': 1,
          'cor': 0xff990000,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
        {
          'textoResposta': 'Parcialmente',
          'score': 3,
          'cor': 0xffcccc00,
          'comentarioResposta':
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit' //, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'
        },
      ],
    }
  ];

  bool get temPerguntaSelecionada {
    return _perguntaSelecionada < _perguntas.length;
  }

  bool respostaNegativa(texto) {
    return texto == 'Não';
  }

  void _responder(int pontuacao, texto) {
    if (temPerguntaSelecionada) {
      setState(() {
        _perguntaSelecionada++;
        _scoreTotal += pontuacao;
      });
    }
  }

  //void get negativa {
  //  if (_tipoResposta == 'Não') {
  //    CaseNegativo(Perguntas());
  //  }
  // }

  void _reiniciarQuestionario() {
    setState(() {
      _perguntaSelecionada = 0;
      _scoreTotal = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlueAccent,
        appBar: AppBar(
          title: Center(
            child: Text(
              'Aplicação Lei Geral de Proteção de Dados',
              style: TextStyle(
                fontSize: 19,
                color: Colors.white,
              ),
            ),
          ),
        ),
        body: temPerguntaSelecionada
            ? Questionario(
                perguntas: _perguntas,
                perguntaSelecionada: _perguntaSelecionada,
                quandoResponder: _responder,
              )
            : Resultado(_scoreTotal, _reiniciarQuestionario),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PerguntaApp extends StatefulWidget {
  @override
  _PerguntaAppState createState() {
    return _PerguntaAppState();
  }
}
