import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';

class telasenhordobonfim extends StatefulWidget {
  const telasenhordobonfim({Key? key}) : super(key: key);

  @override
  State<telasenhordobonfim> createState() => _telasenhordobonfimState();
}

class _telasenhordobonfimState extends State<telasenhordobonfim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child:  Column(
          children: [
            Text('Biblioteca Campus Senhor Do Bonfim\n',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 30,
                )),
            Container(
              child: Image.asset('imagem/campussenhordobonfim.png'),
            ),
            Text(
                '\n Responsável: Fábio Silva Santiago (Bibliotecário - Biblioteca de Senhor do Bonfim)\n'
                    '\n Endereço: Rua Tomaz Guimarães, s/n, Condomínio Aeroporto Senhor do Bonfim-BA,\n '
                    '\nCEP: 48902-300 \n'
                    '\nTelefone: (74) 3221-4811\n '
                    '\n E-mail: biblioteca.sbf@univasf.edu.br\n',
                style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
