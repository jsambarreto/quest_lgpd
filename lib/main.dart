import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quest_lgpd/perguntaapp.dart';

main() => runApp(MaterialApp(
      home: Qlgpd(),
    ));

class Qlgpd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        width: double.infinity,
        margin: EdgeInsets.all(20),
        child: Scaffold(
          body: Card(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Card(
                    color: Colors.blueGrey,
                    shadowColor: Colors.brown,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    child: Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(32),
                      child: Text(
                        //comentario,
                        'Lorem ipsum dolor sit amet. Quis laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      color: Colors.blueAccent,
                      textColor: Colors.white,
                      child: Text(
                        'Iniciar Questionário',
                        style: TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PerguntaApp()),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
