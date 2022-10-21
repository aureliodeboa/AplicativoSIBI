import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
class telajuzeiro extends StatefulWidget {
  const telajuzeiro({Key? key}) : super(key: key);

  @override
  State<telajuzeiro> createState() => _telajuzeiroState();
}

class _telajuzeiroState extends State<telajuzeiro> {
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
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
          children: [
            Text(
              'Biblioteca Campus Juazeiro\n',
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
                  'imagem/campusjuazeiro.png'
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
              'Av. Antonio Carlos Magalhães, 510, Santo Antônio, Juazeiro-BA, CEP: 48902-300',
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
                child:  Icon(Icons.call_outlined, size: 30.0,color: Colors.blue[400],),
              ),
              label: Text(
                '(74)2102-7656',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[400]),
              ),
              onPressed: () => setState(() {
                launchExternalWebsite("tel:07421027656");
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
                'biblioteca.juazeiro@univasf.edu.br',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w500,
                    color: Colors.blue[400]),
              ),
              onPressed: () => setState(() {
                launchExternalWebsite("mailto:biblioteca.juazeiro@univasf.edu.br");
              }),
            ),
          ],
        ),
      ),

    );
  }
}
