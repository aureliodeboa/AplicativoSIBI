import 'package:flutter/material.dart';
class telaespacoplural extends StatefulWidget {
  const telaespacoplural({Key? key}) : super(key: key);

  @override
  State<telaespacoplural> createState() => _telaespacopluralState();
}

class _telaespacopluralState extends State<telaespacoplural> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[400],
      ),
      body: Column(
        children: [
          Text('Biblioteca Espaço Plural',textAlign: TextAlign.center,style: TextStyle(color: Colors.amber, fontSize: 30,)),
          Container(child: Image.asset('imagem/espacoplural.jpeg'),),
          Text('Endereço: Rod. BA-210, Km 4, S/n - Malhada da Areia, Juazeiro - BA'
              'Atendente: Henrique Pereira de Aquino'
              'E-mail: biblioteca.plural@univasf.edu.br')
        ],
      ),
    );
  }
}
