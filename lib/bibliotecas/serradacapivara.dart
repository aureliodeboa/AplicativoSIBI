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
          Text(
              'Biblioteca Campus Serra da Capivara\n',
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
                  'imagem/campusserradacapivara.png'
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
              'Kênia Leadra Ferreira Alves (Bibliotecária)',
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
              'Rua João Ferreira dos Santos, s/n, Bairro Campestre, São Raimundo Nonato – PI, CEP 64770-000',
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
              '(89)3582-9760',
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
              'biblioteca.srn@univasf.edu.br',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),

            Text(
              '\nAssistente em Administração',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),     
            Text(
              'Vilma dos Santos Castro',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),

            Text(
              '\nAuxiliar de Biblioteca',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),     
            Text(
              'Thyanne Michelle Ferreira Alves',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),

            Text(
              '\nAtendente',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),     
            Text(
              'Eliene de Castro Soares',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
        ],
      )),

    );
  }
}
