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
            Text(
              'Biblioteca Campus Ciências Agrárias\n',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  // color: Colors.amber,
                  color: Color.fromARGB(255, 253, 152, 2),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                )
            ),
            
            Container(
              child: 
                Image.asset(
                  'imagem/campuscienciasagrarias.png'
                ),
            ),
            
            Text(
              '\nResponsável',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),
            Text(
              'Andressa Lais Machado de Matos (Bibliotecária)',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),

            Text(
              '\nEndereço',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),    
            Text(
              'Rod. BR 407, Km 12, Lote 543, Projeto de Irrigação Senador Nilo Coelho, s/n C1, Petrolina-PE, CEP: 56300-990',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
            
            Text(
              '\nTelefone',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),   
            Text(
              ' (87)2101-4813',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),

            Text(
              '\nE-mail',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),     
            Text(
              'biblioteca.fazenda@univasf.edu.br',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
            Text(
              '\nAtendentes',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),     
            Text(
              'Rozangela Cristina Nogueira\n'
              'Lucineide Nunes',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
          ],
      ),),

    );
  }
}
