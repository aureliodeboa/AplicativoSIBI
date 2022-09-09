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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
          child :Column(
            children: [
              Text(
              'Biblioteca Espaço Plural\n',
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
                  'imagem/espacoplural.jpeg'
                ),
            ),
            
            Text(
              '\nAtendente',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),
            Text(
              'Henrique Pereira de Aquino',
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
              'Rod. BA-210, Km 4, S/n - Malhada da Areia, Juazeiro - BA',
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
              'biblioteca.plural@univasf.edu.br',
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
