import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class telasenhordobonfim extends StatefulWidget {
  const telasenhordobonfim({Key? key}) : super(key: key);

  @override
  State<telasenhordobonfim> createState() => _telasenhordobonfimState();
}

class _telasenhordobonfimState extends State<telasenhordobonfim> {
  void launchExternalWebsite(String url) async {
    var urlUri = Uri.parse(url);
    if (await canLaunchUrl(urlUri)) {
      await launchUrl(urlUri, mode: LaunchMode.externalApplication);
    } else {
      throw 'could not lanch $urlUri';

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body:SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child:  Column(
          children: [
            Text(
              'Biblioteca Campus Senhor do Bonfim\n',
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
                  'imagem/campussenhordobonfim.png'
                ),
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
              'Rua Tomaz Guimarães, s/n, Condomínio Aeroporto, Senhor do Bonfim-BA, CEP: 48970-000.',
              textAlign: TextAlign.center,
              style: 
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w500
                )
            ),
            
            Text(
              '\nTelefone',
              textAlign: TextAlign.center,
              textDirection: TextDirection.ltr,
              style: 
                TextStyle(
                  fontSize: 21,
                  fontWeight: FontWeight.bold,
                )
            ),
            TextButton.icon(
              icon: Container(
                child:  Icon(Icons.call_outlined, size: 25.0,color: Colors.blue[400],),
              ),
              label: Text(
                '(74)3221-4811',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[400]),
              ),
              onPressed: () => setState(() {
                launchExternalWebsite("tel:07432214811");
              }),
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
            TextButton.icon(
              icon: Container(
                child:  Icon(Icons.email_outlined, size: 25.0,color:  Color.fromARGB(255, 253, 152, 2)),
              ),
              label: Text(
                'biblioteca.sbf@univasf.edu.br',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[400]),
              ),
              onPressed: () => setState(() {
                launchExternalWebsite("mailto:biblioteca.sbf@univasf.edu.br");
              }),
            ),


          ],
        ),
      ),
    );
  }
}
