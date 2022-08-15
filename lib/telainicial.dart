import 'package:flutter/material.dart';

class telainicial extends StatefulWidget {
  const telainicial({Key? key}) : super(key: key);

  @override
  State<telainicial> createState() => _telainicialState();
}

class _telainicialState extends State<telainicial> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Container(
          child: Center(
            child: Text('TELA INICIAL'),
            //teste da branch dev
          ),
        ),
      ),
    );
  }
}
