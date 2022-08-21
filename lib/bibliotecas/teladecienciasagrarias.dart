import 'package:flutter/material.dart';
class teladecienciasagrarias extends StatefulWidget {
  const teladecienciasagrarias({Key? key}) : super(key: key);

  @override
  State<teladecienciasagrarias> createState() => _teladecienciasagrariasState();
}

class _teladecienciasagrariasState extends State<teladecienciasagrarias> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: Column(
        children: [
          Text('Biblioteca Campus Ciências Agrárias',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/campuscienciasagrarias.png'),),
          Text(' Abrangência do acervo: Ciências Biológicas,  Engenharia Agronômica, Medicina Veterinária e Zootecnia. '
              'Atendentes: Rozangela Cristina Nogueira,Lucineide Nunes'
              'Responsável: Andressa Lais Machado de Matos (Bibliotecária - Biblioteca de Ciências Agrárias)'
              'Endereço: Rodovia BR 407, Km 12 - Lote 543 - Projeto de Irrigação Senador Nilo Coelho, s/n C1. Petrolina-PE, CEP: 56300-990. '
              'Telefone: (87) 21014813'
              'E-mail: biblioteca.fazenda@univasf.edu.br'
              '',style: TextStyle( fontSize: 15)),
        ],
      ),

    );
  }
}
