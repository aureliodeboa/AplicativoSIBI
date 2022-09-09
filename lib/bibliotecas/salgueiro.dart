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

      appBar: 
        AppBar(
          backgroundColor: Colors.blue[400]),
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
          Text(
              'Biblioteca Campus Juazeiro\n',
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
                  'imagem/salgueiro.png'
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
              'Ana Cleide Lúcio Pinheiro (Bibliotecária)',
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
              'Rua Antônio Figueira, 134, Nossa Senhora das Graças. Salgueiro-PE, CEP: 56000-000',
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
              'biblioteca.salgueiro@univasf.edu.br',
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
              'Ayla Sampaio',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
        ],
      ),)

    );;
  }
}
