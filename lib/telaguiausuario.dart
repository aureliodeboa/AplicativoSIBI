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
        backgroundColor: Colors.blue[400],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: <Widget>[
              Text(
                'APRESENTAÇÃO',
                style: TextStyle(
                  fontSize: 25,
                  foreground: Paint()
                    ..style = PaintingStyle.stroke
                    ..strokeWidth = 1
                    ..color = Colors.blue[400]!,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
