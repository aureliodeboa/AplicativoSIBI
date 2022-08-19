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
      endDrawer: menulateral(),
      body: Column(
        children: [
          Text('Biblioteca Campus Senhor Do Bonfim',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.amber,
                fontSize: 30,
              )),
          Container(
            child: Image.asset('imagem/campussenhordobonfim.png'),
          ),
          Text(
              'Responsável: Renato Marques Alves (Bibliotecário - Coordenador da Biblioteca de Juazeiro)'
              ' Endereço: Avenida Antonio Carlos Magalhães, 510, Santo AntônioJuazeiro-BA, '
              'CEP: 48902-300 Telefone: (74) 21027656 '
              ' E-mail: biblioteca.juazeiro@univasf.edu.br',
              style: TextStyle(fontSize: 15)),
        ],
      ),
    );
  }
}
