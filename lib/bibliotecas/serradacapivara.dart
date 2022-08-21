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
      body: Column(
        children: [
          Text('Biblioteca Campus Serra da Capivara',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/campusserradacapivara.png'),),
          Text('Responsável:  Kênia Leadra Ferreira Alves (Bibliotecária - Biblioteca de São Raimundo Nonato)'
              'Endereço: Rua João Ferreira dos Santos, s/n, Bairro Campestre, São Raimundo Nonato – PI, CEP 64770-000'
              'Telefone: (89) 35829760'
              'E-mail: biblioteca.srn@univasf.edu.br'
              'Equipe: Assistente em Administração : Vilma dos Santos Castro'
              'Auxiliar de Biblioteca: Thyanne Michelle Ferreira Alves'
              'Atendente: Eliene de Castro Soares', style: TextStyle( fontSize: 15)),
        ],
      ),

    );
  }
}
