import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';
class telajuzeiro extends StatefulWidget {
  const telajuzeiro({Key? key}) : super(key: key);

  @override
  State<telajuzeiro> createState() => _telajuzeiroState();
}

class _telajuzeiroState extends State<telajuzeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: Column(
        children: [
          Text('Biblioteca Campus Juazeiro',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/campusjuazeiro.png'),),
          Text('Responsável: Renato Marques Alves (Bibliotecário - Coordenador da Biblioteca de Juazeiro)'
              ' Endereço: Avenida Antonio Carlos Magalhães, 510, Santo AntônioJuazeiro-BA, '
              'CEP: 48902-300 Telefone: (74) 21027656 '
              ' E-mail: biblioteca.juazeiro@univasf.edu.br', style: TextStyle( fontSize: 15)),
        ],
      ),

    );
  }
}
