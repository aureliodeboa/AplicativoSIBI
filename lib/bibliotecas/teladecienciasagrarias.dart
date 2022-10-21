import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
class teladecienciasagrarias extends StatefulWidget {
  const teladecienciasagrarias({Key? key}) : super(key: key);

  @override
  State<teladecienciasagrarias> createState() => _teladecienciasagrariasState();
}

class _teladecienciasagrariasState extends State<teladecienciasagrarias> {
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
    return  Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue[400]),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Column(
        children: [
            Text(
              'Biblioteca Campus Ciências Agrárias\n',
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
                  'imagem/campuscienciasagrarias.png'
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
              'Rod. BR 407, Km 12, Lote 543, Projeto de Irrigação Senador Nilo Coelho, s/n C1, Petrolina-PE, CEP: 56300-990',
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
              child:  Icon(Icons.call_outlined, size: 25.0,color: Colors.blue[400]),
            ),
            label: Text(
              '(87) 2101-4813',
              style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[400]),
            ),
            onPressed: () => setState(() {
              launchExternalWebsite("tel:08721014813");
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
              'biblioteca.fazenda@univasf.edu.br',
              style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w500,
                  color: Colors.blue[400]),
            ),
            onPressed: () => setState(() {
              launchExternalWebsite("mailto:biblioteca.fazenda@univasf.edu.br");
            }),
          ),


          ],
      ),),

    );
  }
}
