import 'package:flutter/material.dart';
class serradacapivara extends StatefulWidget {
  const serradacapivara({Key? key}) : super(key: key);

  @override
  State<serradacapivara> createState() => _serradacapivaraState();
}

class _serradacapivaraState extends State<serradacapivara> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: Column(
        children: [
          Text('Biblioteca Campus Serra da Capivara\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/campusserradacapivara.png'),),
          Text('\nResponsável:  Kênia Leadra Ferreira Alves (Bibliotecária - Biblioteca de São Raimundo Nonato)\n'
              '\nEndereço: Rua João Ferreira dos Santos, s/n, Bairro Campestre, São Raimundo Nonato – PI, \n CEP 64770-000\n'
              '\nTelefone: (89) 35829760\n'
              '\nE-mail: biblioteca.srn@univasf.edu.br\n'
              '\nEquipe: Assistente em Administração : Vilma dos Santos Castro\n'
              '\nAuxiliar de Biblioteca: Thyanne Michelle Ferreira Alves\n'
              '\nAtendente: Eliene de Castro Soares\n', style: TextStyle( fontSize: 15)),
        ],
      )),

    );
  }
}
