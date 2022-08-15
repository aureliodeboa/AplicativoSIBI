import 'package:flutter/material.dart';

class telainicial extends StatefulWidget {
  const telainicial({Key? key}) : super(key: key);

  @override
  State<telainicial> createState() => _telainicialState();
}

class _telainicialState extends State<telainicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container( child:
        Center( child:  Column(
          children: [
            Text('GET AB'),
          ],
        ), ),
    ),),);
  }
}
