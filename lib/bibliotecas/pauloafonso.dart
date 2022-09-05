import 'package:flutter/material.dart';
class pauloafonso extends StatefulWidget {
  const pauloafonso({Key? key}) : super(key: key);

  @override
  State<pauloafonso> createState() => _pauloafonsoState();
}

class _pauloafonsoState extends State<pauloafonso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
          Text('Biblioteca Campus Paulo Afonso\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/pauloafonso.png'),),
          Text('\nResponsável: Jaqueline Silva de Souza (Bibliotecária - Biblioteca de Paulo Afonso)\n'
              '\nEndereço: Avenida da Amizade, s/n Bairro: Sal Torrado\n '
              '\nPaulo Afonso-BA, CEP: 48607-190 \n'
              '\nTelefone: 75 3282-3459 \n'
              '\nE-mail: biblioteca.paf@univasf.edu.br\n'
              '\nEquipe: Assistente em Administração: Lorena Carvalho de Morais Sandes\n'
              '\nAtendente Lucicleidi Vitória de Freitas', style: TextStyle( fontSize: 15)),
        ],
      ),),

    );
  }
}
