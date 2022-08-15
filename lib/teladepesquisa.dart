import 'package:flutter/material.dart';
class teladepesquisa extends StatefulWidget {
  const teladepesquisa({Key? key}) : super(key: key);

  @override
  State<teladepesquisa> createState() => _teladepesquisaState();
}

class _teladepesquisaState extends State<teladepesquisa> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Center(
        child: Text('TELA DE PESQUISA'),
      ),
    );
  }
}
