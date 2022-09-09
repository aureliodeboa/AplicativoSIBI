import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';

class telasenhordobonfim extends StatefulWidget {
  const telasenhordobonfim({Key? key}) : super(key: key);

  @override
  State<telasenhordobonfim> createState() => _telasenhordobonfimState();
}

class _telasenhordobonfimState extends State<telasenhordobonfim> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child:  Column(
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
                  'imagem/campussenhordobonfim.png'
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
              'Fábio Silva Santiago (Bibliotecário)',
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
              'Rua Tomaz Guimarães, s/n, Condomínio Aeroporto, Senhor do Bonfim-BA, CEP: 48970-000.',
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
              '(74)3221-4811',
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
              'biblioteca.sbf@univasf.edu.br',
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
              'Sirleide Santana',
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
              'Cássia Vieira Aprígio\n'
              'Elzeni de Souza Nascimento',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
          ],
        ),
      ),
    );
  }
}
