import 'package:flutter/material.dart';

class telabiblioteca extends StatefulWidget {
  const telabiblioteca({Key? key}) : super(key: key);

  @override
  State<telabiblioteca> createState() => _telabibliotecaState();
}

class _telabibliotecaState extends State<telabiblioteca> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text('TELA BIBILIOTECA'),

      ),
    );
  }
}
