import 'package:flutter/material.dart';
import 'package:sibi/menulateral.dart';
import 'package:sibi/telabiblioteca.dart';

class telaguiausuario extends StatefulWidget {
  const telaguiausuario({Key? key}) : super(key: key);
  @override
  State<telaguiausuario> createState() => _telaguiausuarioState();
}

class _telaguiausuarioState extends State<telaguiausuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],title: Text('Guia do Usuario'),      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            padding:  EdgeInsets.fromLTRB(20, 20, 20, 20),
            child: Column(
              children: <Widget>[
                Text('Apresentação',
                  style: TextStyle(
                    color: Colors.blue[800],
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    shadows:[
                      Shadow(
                        color: Colors.black54,
                        blurRadius: 2,
                        offset: Offset(2,1),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
