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
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
          Text('Biblioteca Campus Salgueiro\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/salgueiro.png'),),
          Text('\nResponsável: Ana Cleide Lúcio Pinheiro (Bibliotecária - Biblioteca de Salgueiro)\n'
              '\nEndereço: Rua Antônio Figueira, 134, Nossa Senhora das Graças. Salgueiro-PE,\n CEP: 56000-000\n'
              '\n E-mail: biblioteca.salgueiro@univasf.edu.br\n'
              '\nEquipe: \n'
              'Atendentes: Ayla Sampaio', style: TextStyle( fontSize: 15)),
        ],
      ),)

    );;
  }
}
