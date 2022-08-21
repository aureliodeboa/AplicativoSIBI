import 'package:flutter/material.dart';
class salgueiro extends StatefulWidget {
  const salgueiro({Key? key}) : super(key: key);

  @override
  State<salgueiro> createState() => _salgueiroState();
}

class _salgueiroState extends State<salgueiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: Column(
        children: [
          Text('Biblioteca Campus Salgueiro',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/salgueiro.png'),),
          Text('Responsável: Ana Cleide Lúcio Pinheiro (Bibliotecária - Biblioteca de Salgueiro)'
              'Endereço: Rua Antônio Figueira, 134, Nossa Senhora das Graças. Salgueiro-PE, CEP: 56000-000'
              ' E-mail: biblioteca.salgueiro@univasf.edu.br'
              'Equipe'
              ' Atendentes: Ayla Sampaio', style: TextStyle( fontSize: 15)),
        ],
      ),

    );;
  }
}
