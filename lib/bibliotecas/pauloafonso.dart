import 'package:flutter/material.dart';
class pauloafonso extends StatefulWidget {
  const pauloafonso({Key? key}) : super(key: key);

  @override
  State<pauloafonso> createState() => _pauloafonsoState();
}

class _pauloafonsoState extends State<pauloafonso> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
          Text(
            'Biblioteca Campus Paulo Afonso\n',
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
                'imagem/pauloafonso.png'
              ),
          ),
          
          Text(
            '\nResponsável',
            textAlign: TextAlign.left,
            style: 
              TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              )
          ),
          Text(
            'Jaqueline Silva de Souza (Bibliotecária)',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
          ),

          Text(
            '\nEndereço',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: 
              TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              )
          ),    
          Text(
            'Avenida da Amizade, s/n Bairro: Sal Torrado, Paulo Afonso-BA, CEP: 48607-190',
            textAlign: TextAlign.center,
            style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
          ),
          
          Text(
            '\nTelefone',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: 
              TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              )
          ),   
          Text(
            '(75)3282-3459',
            textAlign: TextAlign.center,
            style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
          ),

          Text(
            '\nE-mail',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: 
              TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              )
          ),     
          Text(
            'biblioteca.paf@univasf.edu.br',
            textAlign: TextAlign.center,
            style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
          ),

          Text(
            '\nAssistente em administração',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: 
              TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              )
          ),     
          Text(
            'Lorena Carvalho de Morais Sandes',
            textAlign: TextAlign.center,
            style: 
              TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
          ),

          Text(
            '\nAtendente',
            textAlign: TextAlign.left,
            textDirection: TextDirection.ltr,
            style: 
              TextStyle(
                fontSize: 21,
                fontWeight: FontWeight.bold,
              )
          ),     
          Text(
            'Lucicleidi Vitória de Freitas',
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
