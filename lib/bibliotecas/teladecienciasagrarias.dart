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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
          Text('Biblioteca Campus Ciências Agrárias\n',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/campuscienciasagrarias.png'),),
          Text('\nAbrangência do acervo: Ciências Biológicas,  Engenharia Agronômica, Medicina Veterinária e Zootecnia. \n'

              '\nResponsável: Andressa Lais Machado de Matos (Bibliotecária - Biblioteca de Ciências Agrárias)\n'
              '\nAtendentes: Rozangela Cristina Nogueira,Lucineide Nunes\n'
              '\nEndereço: Rodovia BR 407, Km 12 - Lote 543 - Projeto de Irrigação Senador Nilo Coelho, s/n C1. Petrolina-PE,\n CEP: 56300-990. \n'
              '\nTelefone: (87) 21014813\n'
              '\nE-mail: biblioteca.fazenda@univasf.edu.br\n'
             ,style: TextStyle( fontSize: 15)),
        ],
      ),),

    );
  }
}
