import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';
class telajuzeiro extends StatefulWidget {
  const telajuzeiro({Key? key}) : super(key: key);

  @override
  State<telajuzeiro> createState() => _telajuzeiroState();
}

class _telajuzeiroState extends State<telajuzeiro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Text('Biblioteca Campus Juazeiro',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber[700], fontSize: 30,)),
            Container(child: Image.asset('imagem/campusjuazeiro.png'),),
            Text('\n Responsável: Renato Marques Alves (Bibliotecário- Coordenador da Biblioteca de Juazeiro)\n '
                '\n Endereço: Avenida Antonio Carlos Magalhães, 510, Santo AntônioJuazeiro-BA, \n'
                '\n CEP: 48902-300 \n'
                '\n Telefone: (74) 21027656 \n'
                '\n E-mail: biblioteca.juazeiro@univasf.edu.br', style: TextStyle( fontSize: 15)),
          ],
        ),
      ),

    );
  }
}
